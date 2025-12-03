@interface NEBloomFilterFile
+ (char)mmapToFile:(id)file data:(id)data numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed tag:(id)tag;
@end

@implementation NEBloomFilterFile

+ (char)mmapToFile:(id)file data:(id)data numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed tag:(id)tag
{
  *&v53[53] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dataCopy = data;
  tagCopy = tag;
  v16 = open([fileCopy UTF8String], 518, 420);
  if (v16 < 0)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *__strerrbuf = 136315906;
      v47 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v48 = 2112;
      v49 = fileCopy;
      v50 = 1024;
      v51 = v37;
      v52 = 2080;
      *v53 = v39;
      v23 = "%s: NEBloomFilterFile - failed to open mmap file %@ <errno %d - %s>";
      v24 = v19;
      v25 = 38;
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v17 = v16;
  v18 = [dataCopy length] + 32;
  if (ftruncate(v17, v18))
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *__error();
      v21 = __error();
      v22 = strerror(*v21);
      *__strerrbuf = 136316162;
      v47 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v48 = 2112;
      v49 = fileCopy;
      v50 = 1024;
      v51 = v18;
      v52 = 1024;
      *v53 = v20;
      v53[2] = 2080;
      *&v53[3] = v22;
      v23 = "%s: NEBloomFilterFile - failed to ftruncate mmap file <%@> to %d bytes <errno %d - %s>";
      v24 = v19;
      v25 = 44;
LABEL_27:
      _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, v23, __strerrbuf, v25);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v29 = mmap(0, v18, 3, 1, v17, 0);
  if (v29 == -1)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *__strerrbuf = 136315906;
      v47 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v48 = 2112;
      v49 = fileCopy;
      v50 = 1024;
      v51 = v17;
      v52 = 1024;
      *v53 = v18;
      v23 = "%s: NEBloomFilterFile - Failed mmap file <%@> <fd %d, size %d>";
      v24 = v19;
      v25 = 34;
      goto LABEL_27;
    }

LABEL_6:
    v26 = 0;
    goto LABEL_7;
  }

  v30 = v29;
  v31 = [dataCopy length];
  *v30 = xmmword_1BAA4E620;
  *(v30 + 4) = bits;
  *(v30 + 5) = hashes;
  *(v30 + 6) = seed;
  *(v30 + 7) = v31;
  if (tagCopy && [tagCopy length] && (objc_msgSend(tagCopy, "dataUsingEncoding:", 4), (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v32;
    v33 = [v32 length];
    *(v30 + 8) = v33;
    v26 = v30 + 36;
    if (v33)
    {
      memcpy(v30 + 36, [v19 bytes], v33);
      v26 += v33;
    }
  }

  else
  {
    v19 = 0;
    *(v30 + 8) = 0;
    v26 = v30 + 36;
  }

  [dataCopy getBytes:v26 length:{objc_msgSend(dataCopy, "length")}];
  if (msync(v30, v18, 16) == -1)
  {
    v35 = *__error();
    if (strerror_r(v35, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v41 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v42 = 1024;
      v43 = v35;
      v44 = 2080;
      v45 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_FAULT, "%s: NEBloomFilterFile - Failed msync: [%d] %s", buf, 0x1Cu);
    }

    goto LABEL_6;
  }

  v34 = ne_log_obj();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *__strerrbuf = 136315138;
    v47 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    _os_log_debug_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilterFile - done msync", __strerrbuf, 0xCu);
  }

  munmap(v30, v18);
  close(v17);
LABEL_7:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

@end