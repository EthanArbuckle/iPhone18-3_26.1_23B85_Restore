@interface ENFile
- (BOOL)_readHashFromArchive:(id)archive error:(id *)error;
- (BOOL)_readHashFromFile:(__sFILE *)file error:(id *)error;
- (BOOL)_readHeaderFromFile:(__sFILE *)file error:(id *)error;
- (BOOL)_readMetadataFromArchive:(id)archive error:(id *)error;
- (BOOL)_readMetadataFromCoder:(id)coder error:(id *)error;
- (BOOL)_readMetadataFromFileHandle:(__sFILE *)handle error:(id *)error;
- (BOOL)_readPrepareAndReturnError:(id *)error;
- (BOOL)_resetAndReadHeaderFromArchive:(id)archive error:(id *)error;
- (BOOL)_writeMetadataAndReturnError:(id *)error;
- (BOOL)_writePrepareAndReturnError:(id *)error;
- (BOOL)closeAndReturnError:(id *)error;
- (BOOL)openForWritingToData:(id)data error:(id *)error;
- (BOOL)openWithArchive:(id)archive error:(id *)error;
- (BOOL)openWithFD:(int)d reading:(BOOL)reading error:(id *)error;
- (BOOL)writeTEK:(id)k flags:(unsigned int)flags error:(id *)error;
- (id)_readKeyWithPtr:(const char *)ptr length:(unint64_t)length error:(id *)error;
- (id)readTEKWithFlags:(unsigned int)flags error:(id *)error;
- (void)dealloc;
@end

@implementation ENFile

- (void)dealloc
{
  [(ENArchive *)self->_archive close];
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    if (fclose(fileHandle) && *__error())
    {
      __error();
    }

    self->_fileHandle = 0;
  }

  v4.receiver = self;
  v4.super_class = ENFile;
  [(ENFile *)&v4 dealloc];
}

- (BOOL)openWithArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  if (gLogCategory_ENFile <= 10 && (gLogCategory_ENFile != -1 || _LogCategory_Initialize()))
  {
    [ENFile openWithArchive:error:];
  }

  archive = self->_archive;
  self->_archive = archiveCopy;

  self->_reading = 1;

  return [(ENFile *)self _readPrepareAndReturnError:error];
}

- (BOOL)openWithFD:(int)d reading:(BOOL)reading error:(id *)error
{
  readingCopy = reading;
  if (gLogCategory_ENFile <= 30 && (gLogCategory_ENFile != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (readingCopy)
  {
    v9 = "rb";
  }

  else
  {
    v9 = "wb";
  }

  v10 = fdopen(d, v9);
  if (v10 || *__error() && !*__error())
  {
    self->_fileHandle = v10;
    self->_reading = readingCopy;
    if (readingCopy)
    {
      if (![(ENFile *)self _readPrepareAndReturnError:error])
      {
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v11) = [(ENFile *)self _writePrepareAndReturnError:error];
      if (!v11)
      {
        return v11;
      }
    }

    LOBYTE(v11) = 1;
    return v11;
  }

  if (error)
  {
    v12 = ENErrorF(2);
    v11 = v12;
    LOBYTE(v11) = 0;
    *error = v12;
    return v11;
  }

LABEL_13:
  LOBYTE(v11) = 0;
  return v11;
}

- (BOOL)openForWritingToData:(id)data error:(id *)error
{
  dataCopy = data;
  if (gLogCategory_ENFile <= 30 && (gLogCategory_ENFile != -1 || _LogCategory_Initialize()))
  {
    [ENFile openForWritingToData:error:];
  }

  outputData = self->_outputData;
  self->_outputData = dataCopy;

  self->_reading = 0;

  return [(ENFile *)self _writePrepareAndReturnError:error];
}

- (BOOL)closeAndReturnError:(id *)error
{
  archive = self->_archive;
  if (archive)
  {
    [(ENArchive *)archive close];
    outputData = self->_archive;
    self->_archive = 0;
LABEL_5:

    return 1;
  }

  outputData = self->_outputData;
  if (outputData)
  {
    self->_outputData = 0;
    goto LABEL_5;
  }

  fileHandle = self->_fileHandle;
  if (gLogCategory_ENFile <= 30 && (gLogCategory_ENFile != -1 || _LogCategory_Initialize()))
  {
    [ENFile closeAndReturnError:];
    if (fileHandle)
    {
LABEL_11:
      v9 = fclose(fileHandle);
      self->_fileHandle = 0;
      if (!v9)
      {
        return 1;
      }

      if (error)
      {
        v13 = *__error();
        v10 = 1;
LABEL_17:
        v11 = ENErrorF(v10);
        v12 = v11;
        result = 0;
        *error = v11;
        return result;
      }

      return 0;
    }
  }

  else if (fileHandle)
  {
    goto LABEL_11;
  }

  if (error)
  {
    v10 = 10;
    goto LABEL_17;
  }

  return 0;
}

- (BOOL)_readHeaderFromFile:(__sFILE *)file error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  __ptr = 0;
  v12 = 0;
  if (fread(&__ptr, 1uLL, 0x10uLL, file) != 16)
  {
    if (feof(file))
    {
      if (!error)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *__error();
      if (!error)
      {
LABEL_18:
        result = 0;
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

  if (gLogCategory_ENFile <= 10 && (gLogCategory_ENFile != -1 || _LogCategory_Initialize()))
  {
    [ENFile _readHeaderFromFile:error:];
  }

  if (__ptr != 0x726F707845204B45 || v12 != 0x2020202031762074)
  {
    if (!error)
    {
      goto LABEL_18;
    }

LABEL_15:
    v8 = ENErrorF(15);
    v9 = v8;
    result = 0;
    *error = v8;
    goto LABEL_19;
  }

  result = 1;
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_readHashFromFile:(__sFILE *)file error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  if (!file)
  {
    if (error)
    {
      v14 = ENErrorF(10);
      v16 = v14;
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v6 = fileno(file);
  memset(&v19, 0, sizeof(v19));
  if (fstat(v6, &v19) && (!*__error() || *__error()))
  {
    if (error)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  st_size = v19.st_size;
  if (v19.st_size == -1)
  {
    if (error)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v8 = mmap(0, v19.st_size, 1, 2, v6, 0);
  if (v8 == -1 && (!*__error() || *__error()))
  {
    if (error)
    {
LABEL_13:
      v13 = *MEMORY[0x277CCA590];
      v14 = NSErrorF();
      v15 = v14;
LABEL_14:
      result = 0;
      *error = v14;
      goto LABEL_19;
    }

LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__ENFile__readHashFromFile_error___block_invoke;
  v18[3] = &__block_descriptor_48_e5_v8__0l;
  v18[4] = v8;
  v18[5] = st_size;
  v9 = MEMORY[0x2383EE560](v18);
  memset(v20, 0, sizeof(v20));
  ccsha256_di();
  ccdigest();
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v20 length:32];
  sha256Data = self->_sha256Data;
  self->_sha256Data = v10;

  v9[2](v9);
  result = 1;
LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_readMetadataFromFileHandle:(__sFILE *)handle error:(id *)error
{
  v12 = 0;
  if (fgetpos(handle, &v12) && (!*__error() || *__error()))
  {
    if (error)
    {
      v10 = *MEMORY[0x277CCA590];
      NSErrorF();
      *error = v8 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__ENFile__readMetadataFromFileHandle_error___block_invoke;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = handle;
    v11[5] = v12;
    v7 = MEMORY[0x2383EE560](v11);
    v8 = [(ENFile *)self _readMetadataFromCoder:self->_protobufCoder error:error];
    v7[2](v7);
  }

  return v8;
}

- (BOOL)_readMetadataFromCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __39__ENFile__readMetadataFromCoder_error___block_invoke;
  v43[3] = &unk_278A4B610;
  v43[4] = &v44;
  v43[5] = error;
  v7 = MEMORY[0x2383EE560](v43);
  if (coderCopy)
  {
    while (1)
    {
      if ((~self->_metadataFlags & 0x7E) == 0)
      {
LABEL_30:
        v29 = 1;
        goto LABEL_33;
      }

      v8 = objc_autoreleasePoolPush();
      v42 = 0;
      v9 = (v45 + 5);
      obj = v45[5];
      v41 = 0;
      v10 = [coderCopy readType:&v42 tag:&v41 eofOkay:1 error:&obj];
      objc_storeStrong(v9, obj);
      if ((v10 & 1) == 0)
      {
        if (v45[5])
        {
          v15 = 1;
        }

        else
        {
          v15 = 5;
        }

        goto LABEL_26;
      }

      if (v41 <= 2)
      {
        if (v41 == 1)
        {
          v24 = (v45 + 5);
          v38 = v45[5];
          v39 = 0;
          v25 = [coderCopy readFixedUInt64:&v39 error:&v38];
          objc_storeStrong(v24, v38);
          if ((v25 & 1) == 0)
          {
            goto LABEL_28;
          }

          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v39];
          [(NSMutableDictionary *)self->_mutableMetadata setObject:v26 forKeyedSubscript:@"startTS"];

          v14 = self->_metadataFlags | 2;
          goto LABEL_23;
        }

        if (v41 == 2)
        {
          v39 = 0;
          v16 = (v45 + 5);
          v37 = v45[5];
          v17 = [coderCopy readFixedUInt64:&v39 error:&v37];
          objc_storeStrong(v16, v37);
          if ((v17 & 1) == 0)
          {
            goto LABEL_28;
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v39];
          [(NSMutableDictionary *)self->_mutableMetadata setObject:v18 forKeyedSubscript:@"endTS"];

          v14 = self->_metadataFlags | 4;
          goto LABEL_23;
        }
      }

      else
      {
        switch(v41)
        {
          case 3:
            v19 = (v45 + 5);
            v36 = v45[5];
            v20 = [coderCopy readNSStringAndReturnError:&v36];
            objc_storeStrong(v19, v36);
            if (!v20)
            {
              goto LABEL_28;
            }

            [(NSMutableDictionary *)self->_mutableMetadata setObject:v20 forKeyedSubscript:@"region"];
            self->_metadataFlags |= 8u;

            goto LABEL_25;
          case 4:
            LODWORD(v39) = 0;
            v21 = (v45 + 5);
            v35 = v45[5];
            v22 = [coderCopy readVarIntUInt32:&v39 error:&v35];
            objc_storeStrong(v21, v35);
            if ((v22 & 1) == 0)
            {
              goto LABEL_28;
            }

            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
            [(NSMutableDictionary *)self->_mutableMetadata setObject:v23 forKeyedSubscript:@"batchNum"];

            v14 = self->_metadataFlags | 0x10;
            goto LABEL_23;
          case 5:
            LODWORD(v39) = 0;
            v11 = (v45 + 5);
            v34 = v45[5];
            v12 = [coderCopy readVarIntUInt32:&v39 error:&v34];
            objc_storeStrong(v11, v34);
            if ((v12 & 1) == 0)
            {
              goto LABEL_28;
            }

            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
            [(NSMutableDictionary *)self->_mutableMetadata setObject:v13 forKeyedSubscript:@"batchSize"];

            v14 = self->_metadataFlags | 0x20;
LABEL_23:
            self->_metadataFlags = v14;
            goto LABEL_25;
        }
      }

      v27 = (v45 + 5);
      v33 = v45[5];
      v28 = [coderCopy skipType:v42 error:&v33];
      objc_storeStrong(v27, v33);
      if (!v28)
      {
LABEL_28:
        v15 = 1;
        goto LABEL_26;
      }

LABEL_25:
      v15 = 0;
LABEL_26:
      objc_autoreleasePoolPop(v8);
      if (v15)
      {
        if (v15 != 5)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }
  }

  v30 = ENErrorF(10);
  v31 = v45[5];
  v45[5] = v30;

LABEL_32:
  v29 = 0;
LABEL_33:
  v7[2](v7);

  _Block_object_dispose(&v44, 8);
  return v29;
}

id __39__ENFile__readMetadataFromCoder_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)_writePrepareAndReturnError:(id *)error
{
  fileHandle = self->_fileHandle;
  v6 = self->_outputData;
  v7 = v6;
  if (!(fileHandle | v6))
  {
    if (error)
    {
      v14 = 10;
      goto LABEL_13;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_10;
  }

  if (!fileHandle)
  {
    if (v6)
    {
      [v6 appendBytes:"EK Export v1    " length:16];
      v10 = objc_alloc_init(ENProtobufCoder);
      protobufCoder = self->_protobufCoder;
      self->_protobufCoder = v10;

      [(ENProtobufCoder *)self->_protobufCoder setWriteMutableData:v7];
    }

    goto LABEL_9;
  }

  if (fwrite("EK Export v1    ", 1uLL, 0x10uLL, fileHandle) != 16 && (!*__error() || *__error()))
  {
    if (error)
    {
      v14 = 1;
LABEL_13:
      ENErrorF(v14);
      *error = v12 = 0;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v8 = objc_alloc_init(ENProtobufCoder);
  v9 = self->_protobufCoder;
  self->_protobufCoder = v8;

  [(ENProtobufCoder *)self->_protobufCoder setFileHandle:fileHandle];
LABEL_9:
  v12 = [(ENFile *)self _writeMetadataAndReturnError:error];
LABEL_10:

  return v12;
}

- (id)readTEKWithFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  v7 = self->_protobufCoder;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v9 = [(ENProtobufCoder *)v7 readType:&v29 tag:&v28 eofOkay:1 error:&v27];
    v10 = v27;
    if (v9)
    {
      while (1)
      {
        v11 = (flagsCopy & 2) != 0 && v28 == 8;
        v12 = !v11;
        if ((flagsCopy & (v28 == 7)) != 0 || !v12)
        {
          break;
        }

        v23 = v10;
        v13 = [(ENProtobufCoder *)v7 skipType:v29 error:&v23];
        v14 = v23;

        if (!v13)
        {
          v16 = 0;
          v10 = v14;
          goto LABEL_19;
        }

        objc_autoreleasePoolPop(v8);
        v8 = objc_autoreleasePoolPush();
        v29 = 0;
        v27 = v14;
        v28 = 0;
        v15 = [(ENProtobufCoder *)v7 readType:&v29 tag:&v28 eofOkay:1 error:&v27];
        v10 = v27;

        if (!v15)
        {
          goto LABEL_13;
        }
      }

      v26 = 0;
      v17 = v7;
      v25 = v10;
      v18 = [(ENProtobufCoder *)v17 readLengthDelimited:&v26 error:&v25];
      v19 = v25;

      if (v18)
      {
        v24 = v19;
        v16 = [(ENFile *)self _readKeyWithPtr:v18 length:v26 error:&v24];
        v20 = v24;

        v19 = v20;
      }

      else
      {
        v16 = 0;
      }

      [v16 setRevised:v28 == 8];
      v10 = v19;
    }

    else
    {
LABEL_13:
      v16 = 0;
    }

LABEL_19:
    objc_autoreleasePoolPop(v8);
    if (error)
    {
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v10;
      }

      *error = v21;
    }
  }

  else if (error)
  {
    ENErrorF(10);
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_readKeyWithPtr:(const char *)ptr length:(unint64_t)length error:(id *)error
{
  v9 = self->_tekProtobufCoder;
  if (!v9)
  {
    v9 = objc_alloc_init(ENProtobufCoder);
    tekProtobufCoder = self->_tekProtobufCoder;
    self->_tekProtobufCoder = v9;
  }

  [(ENProtobufCoder *)v9 setReadMemory:ptr length:length];
  v11 = objc_alloc_init(ENTemporaryExposureKey);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v12 = [(ENProtobufCoder *)v9 readType:&v25 tag:&v24 eofOkay:1 error:&v23];
  v13 = v23;
  v14 = v13;
  if (v12 || v13)
  {
    do
    {
      if (!v12)
      {
        if (error)
        {
          v21 = v14;
          *error = v14;
        }

LABEL_41:

LABEL_42:
        v19 = 0;
        goto LABEL_36;
      }

      if (v24 > 4)
      {
        if (v24 <= 6)
        {
          if (v24 == 5)
          {
            v22 = 0;
            if (![(ENProtobufCoder *)v9 readVarIntUInt32:&v22 error:error])
            {
              goto LABEL_41;
            }

            [(ENTemporaryExposureKey *)v11 setDiagnosisReportType:v22];
          }

          else
          {
            v22 = 0;
            if (![(ENProtobufCoder *)v9 readVarIntSInt32:&v22 error:error])
            {
              goto LABEL_41;
            }

            [(ENTemporaryExposureKey *)v11 setDaysSinceOnsetOfSymptoms:v22];
          }

          goto LABEL_32;
        }

        if (v24 == 7)
        {
          LOBYTE(v22) = 0;
          if (![(ENProtobufCoder *)v9 readVarIntBoolean:&v22 error:error])
          {
            goto LABEL_41;
          }

          [(ENTemporaryExposureKey *)v11 setVaccinated:v22];
          goto LABEL_32;
        }

        if (v24 == 8)
        {
          v22 = 0;
          if (![(ENProtobufCoder *)v9 readVarIntUInt32:&v22 error:error])
          {
            goto LABEL_41;
          }

          [(ENTemporaryExposureKey *)v11 setVariantOfConcernType:v22];
          goto LABEL_32;
        }
      }

      else
      {
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v22 = 0;
            if (![(ENProtobufCoder *)v9 readVarIntUInt32:&v22 error:error])
            {
              goto LABEL_41;
            }

            [(ENTemporaryExposureKey *)v11 setRollingStartNumber:v22];
          }

          else
          {
            v22 = 0;
            if (![(ENProtobufCoder *)v9 readVarIntUInt32:&v22 error:error])
            {
              goto LABEL_41;
            }

            [(ENTemporaryExposureKey *)v11 setRollingPeriod:v22];
          }

          goto LABEL_32;
        }

        if (v24 == 1)
        {
          v15 = [(ENProtobufCoder *)v9 readNSDataAndReturnError:error];
          if (!v15)
          {
            goto LABEL_41;
          }

          v16 = v15;
          [(ENTemporaryExposureKey *)v11 setKeyData:v15];

          goto LABEL_32;
        }

        if (v24 == 2)
        {
          v22 = 0;
          if (![(ENProtobufCoder *)v9 readVarIntUInt32:&v22 error:error])
          {
            goto LABEL_41;
          }

          [(ENTemporaryExposureKey *)v11 setTransmissionRiskLevel:v22];
          goto LABEL_32;
        }
      }

      if (![(ENProtobufCoder *)v9 skipType:v25 error:error])
      {
        goto LABEL_41;
      }

LABEL_32:

      v25 = 0;
      v23 = 0;
      v24 = 0;
      v12 = [(ENProtobufCoder *)v9 readType:&v25 tag:&v24 eofOkay:1 error:&v23];
      v17 = v23;
      v14 = v17;
    }

    while (v12 || v17);
  }

  keyData = [(ENTemporaryExposureKey *)v11 keyData];

  if (keyData)
  {
    v19 = v11;
  }

  else
  {
    if (!error)
    {
      goto LABEL_42;
    }

    ENErrorF(1);
    *error = v19 = 0;
  }

LABEL_36:

  return v19;
}

- (BOOL)writeTEK:(id)k flags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  v27 = *MEMORY[0x277D85DE8];
  kCopy = k;
  fileHandle = self->_fileHandle;
  v10 = self->_outputData;
  if (!(fileHandle | v10))
  {
    if (error)
    {
      v23 = 10;
LABEL_31:
      ENErrorF(v23);
      *error = v22 = 0;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  tekProtobufCoder = self->_tekProtobufCoder;
  if (!tekProtobufCoder)
  {
    v12 = objc_alloc_init(ENProtobufCoder);
    v13 = self->_tekProtobufCoder;
    self->_tekProtobufCoder = v12;

    tekProtobufCoder = self->_tekProtobufCoder;
  }

  memset(v26, 0, sizeof(v26));
  [(ENProtobufCoder *)tekProtobufCoder setWriteMemory:v26 length:128];
  if ([kCopy daysSinceOnsetOfSymptoms] != 0x7FFFFFFFFFFFFFFFLL && !-[ENProtobufCoder writeVarIntSInt32:tag:error:](self->_tekProtobufCoder, "writeVarIntSInt32:tag:error:", objc_msgSend(kCopy, "daysSinceOnsetOfSymptoms"), 6, error))
  {
    goto LABEL_33;
  }

  diagnosisReportType = [kCopy diagnosisReportType];
  if (diagnosisReportType)
  {
    if (![(ENProtobufCoder *)self->_tekProtobufCoder writeVarIntUInt32:diagnosisReportType tag:5 error:error])
    {
      goto LABEL_33;
    }
  }

  keyData = [kCopy keyData];
  if (keyData && ![(ENProtobufCoder *)self->_tekProtobufCoder writeNSData:keyData tag:1 error:error])
  {

    goto LABEL_33;
  }

  if (!-[ENProtobufCoder writeVarIntUInt32:tag:error:](self->_tekProtobufCoder, "writeVarIntUInt32:tag:error:", [kCopy rollingStartNumber], 3, error))
  {
    goto LABEL_33;
  }

  rollingPeriod = [kCopy rollingPeriod];
  if (rollingPeriod)
  {
    if (![(ENProtobufCoder *)self->_tekProtobufCoder writeVarIntUInt32:rollingPeriod tag:4 error:error])
    {
      goto LABEL_33;
    }
  }

  if (!-[ENProtobufCoder writeVarIntUInt32:tag:error:](self->_tekProtobufCoder, "writeVarIntUInt32:tag:error:", [kCopy transmissionRiskLevel], 2, error))
  {
    goto LABEL_33;
  }

  if (!-[ENProtobufCoder writeVarIntBoolean:tag:error:](self->_tekProtobufCoder, "writeVarIntBoolean:tag:error:", [kCopy vaccinated], 7, error))
  {
    goto LABEL_33;
  }

  variantOfConcernType = [kCopy variantOfConcernType];
  if (variantOfConcernType)
  {
    if (![(ENProtobufCoder *)self->_tekProtobufCoder writeVarIntUInt32:variantOfConcernType tag:8 error:error])
    {
      goto LABEL_33;
    }
  }

  writeBase = [(ENProtobufCoder *)self->_tekProtobufCoder writeBase];
  if (!writeBase)
  {
    if (error)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v19 = writeBase;
  writeDst = [(ENProtobufCoder *)self->_tekProtobufCoder writeDst];
  if (!writeDst)
  {
    if (error)
    {
LABEL_30:
      v23 = 16;
      goto LABEL_31;
    }

LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  if (writeDst != v19)
  {
    v21 = (flagsCopy & 2) != 0 ? 8 : 7;
    if (![(ENProtobufCoder *)self->_protobufCoder writeLengthDelimitedPtr:v19 length:writeDst - v19 tag:v21 error:error])
    {
      goto LABEL_33;
    }
  }

  v22 = 1;
LABEL_34:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_readPrepareAndReturnError:(id *)error
{
  v5 = self->_archive;
  fileHandle = self->_fileHandle;
  if (!(v5 | fileHandle))
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v14 = 10;
    goto LABEL_13;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mutableMetadata = self->_mutableMetadata;
  self->_mutableMetadata = v7;

  objc_storeStrong(&self->_metadata, self->_mutableMetadata);
  if (!v5)
  {
    if (fileHandle)
    {
      if ([OUTLINED_FUNCTION_1_1() _readHeaderFromFile:? error:?] && objc_msgSend(OUTLINED_FUNCTION_1_1(), "_readHashFromFile:error:"))
      {
        v12 = objc_alloc_init(ENProtobufCoder);
        protobufCoder = self->_protobufCoder;
        self->_protobufCoder = v12;

        [(ENProtobufCoder *)self->_protobufCoder setFileHandle:fileHandle];
        v11 = [OUTLINED_FUNCTION_1_1() _readMetadataFromFileHandle:? error:?];
        goto LABEL_17;
      }

LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

    if (!error)
    {
      goto LABEL_16;
    }

    v14 = 16;
LABEL_13:
    ENErrorF(v14);
    *error = v11 = 0;
    goto LABEL_17;
  }

  if (![OUTLINED_FUNCTION_0_3() _readHashFromArchive:? error:?] || !objc_msgSend(OUTLINED_FUNCTION_0_3(), "_readMetadataFromArchive:error:") || !objc_msgSend(OUTLINED_FUNCTION_0_3(), "_resetAndReadHeaderFromArchive:error:"))
  {
    goto LABEL_16;
  }

  v9 = objc_alloc_init(ENProtobufCoder);
  v10 = self->_protobufCoder;
  self->_protobufCoder = v9;

  [(ENProtobufCoder *)self->_protobufCoder setReadArchive:v5];
  v11 = 1;
LABEL_17:

  return v11;
}

- (BOOL)_resetAndReadHeaderFromArchive:(id)archive error:(id *)error
{
  __s1[2] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  v6 = archiveCopy;
  if (archiveCopy)
  {
    if ([archiveCopy resetToCurrentEntryAndReturnError:error])
    {
      __s1[0] = 0;
      __s1[1] = 0;
      v14 = 0;
      v7 = [v6 readDataIntoBuffer:__s1 length:16 error:&v14];
      v8 = v14;
      v9 = v8;
      if (v7)
      {
        if (gLogCategory_ENFile <= 10 && (gLogCategory_ENFile != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        if (!memcmp(__s1, "EK Export v1    ", 0x10uLL))
        {
          v11 = 1;
          goto LABEL_19;
        }

        if (error)
        {
          v10 = ENErrorF(15);
          goto LABEL_9;
        }
      }

      else if (error)
      {
        v10 = ENNestedErrorF(v8, 15);
LABEL_9:
        v11 = 0;
        *error = v10;
LABEL_19:

        goto LABEL_20;
      }

      v11 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!error)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_20;
  }

  ENErrorF(10);
  *error = v11 = 0;
LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_readHashFromArchive:(id)archive error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  if ([archiveCopy resetToCurrentEntryAndReturnError:error])
  {
    v7 = ccsha256_di();
    v8 = (*(v7 + 8) + *(v7 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
    MEMORY[0x28223BE20]();
    v10 = v19 - v9;
    bzero(v19 - v9, v11);
    ccdigest_init();
    memset(&v19[2], 0, 128);
    v12 = OUTLINED_FUNCTION_5_0();
    if (v12 < 0)
    {
LABEL_6:
      v14 = 0;
    }

    else
    {
      v13 = v12;
      while (v13)
      {
        ccdigest_update();
        v13 = OUTLINED_FUNCTION_5_0();
        if (v13 < 0)
        {
          goto LABEL_6;
        }
      }

      memset(v19, 0, 32);
      (*(v7 + 56))(v7, v10, v19);
      v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 length:32];
      sha256Data = self->_sha256Data;
      self->_sha256Data = v15;

      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_readMetadataFromArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  if ([OUTLINED_FUNCTION_0_3() _resetAndReadHeaderFromArchive:? error:?])
  {
    v5 = objc_alloc_init(ENProtobufCoder);
    [(ENProtobufCoder *)v5 setReadArchive:archiveCopy];
    v6 = [OUTLINED_FUNCTION_1_1() _readMetadataFromCoder:? error:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_writeMetadataAndReturnError:(id *)error
{
  if (!self->_protobufCoder)
  {
    if (error)
    {
      ENErrorF(12);
      v8 = 0;
      *error = v11 = 0;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  metadata = self->_metadata;
  CFDictionaryGetInt64();
  if (![OUTLINED_FUNCTION_4_1() writeFixedUInt64:? tag:? error:?] || (v6 = self->_metadata, CFDictionaryGetInt64(), !objc_msgSend(OUTLINED_FUNCTION_4_1(), "writeFixedUInt64:tag:error:")))
  {
LABEL_16:
    v8 = 0;
LABEL_17:
    v11 = 0;
    goto LABEL_13;
  }

  v7 = self->_metadata;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8 && ![(ENProtobufCoder *)self->_protobufCoder writeNSString:v8 tag:3 error:error])
  {
    goto LABEL_17;
  }

  v9 = self->_metadata;
  CFDictionaryGetInt64Ranged();
  if (![OUTLINED_FUNCTION_4_1() writeVarIntUInt32:? tag:? error:?])
  {
    goto LABEL_17;
  }

  v10 = self->_metadata;
  CFDictionaryGetInt64Ranged();
  if (![OUTLINED_FUNCTION_4_1() writeVarIntUInt32:? tag:? error:?])
  {
    goto LABEL_17;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

@end