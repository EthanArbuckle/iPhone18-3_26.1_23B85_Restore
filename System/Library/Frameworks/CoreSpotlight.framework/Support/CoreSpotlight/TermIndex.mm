@interface TermIndex
- (TermIndex)init;
- (TermIndex)initWithIndex:(__SI *)index cindex:(int64_t)cindex atPath:(const char *)path coreSpotlight:(BOOL)spotlight;
- (unint64_t)oidForDocID:(unsigned int)d;
- (unint64_t)postingCount:(unint64_t)count;
- (unsigned)groupForDocID:(unsigned int)d;
- (void)dealloc;
- (void)directoryStoreIterate:(id)iterate;
- (void)docIDsIterate:(id)iterate;
- (void)getPostings:(unint64_t)postings block:(id)block;
- (void)getTerms:(id)terms;
@end

@implementation TermIndex

- (TermIndex)init
{
  v3.receiver = self;
  v3.super_class = TermIndex;
  result = [(TermIndex *)&v3 init];
  if (result)
  {
    result->_postings_fd = -1;
    result->_doc_ids = -1;
    result->_term_ids = -1;
    result->_groups = -1;
  }

  return result;
}

- (TermIndex)initWithIndex:(__SI *)index cindex:(int64_t)cindex atPath:(const char *)path coreSpotlight:(BOOL)spotlight
{
  v10 = [(TermIndex *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_index = index;
    v10->_cindex = cindex;
    v12 = sub_10001C5BC(index, cindex);
    v13 = "";
    if (v12)
    {
      v13 = v12;
    }

    v11->_name = v13;
    v11->_flags = sub_10001C660(index, cindex);
    v11->_base = sub_10001C640(index, cindex);
    v11->_coreSpotlight = spotlight;
    bzero(__str, 0x400uLL);
    memset(&v28, 0, sizeof(v28));
    snprintf(__str, 0x400uLL, "%s/%sindexPostings", path, v11->_name);
    v14 = open(__str, 0);
    v11->_postings_fd = v14;
    if (sub_10001BA2C(v14, &v28) != -1)
    {
      v11->_postings_size = v28.st_size;
    }

    snprintf(__str, 0x400uLL, "%s/%sindexTermIds", path, v11->_name);
    v15 = open(__str, 0);
    if (v15 != -1)
    {
      v16 = v15;
      if (sub_10001B1E8(__str, &v28) != -1)
      {
        v17 = mmap(0, v28.st_size, 1, 1, v16, 0);
        v11->_term_ids = v17;
        if (v17 != -1)
        {
          st_size = v28.st_size;
          v11->_term_ids_limit = v28.st_size >> 3;
          v11->_term_ids_map_size = st_size;
        }
      }

      close(v16);
    }

    snprintf(__str, 0x400uLL, "%s/%sindexIds", path, v11->_name);
    v19 = open(__str, 0);
    if (v19 != -1)
    {
      v20 = v19;
      if (sub_10001B1E8(__str, &v28) != -1)
      {
        v21 = mmap(0, v28.st_size, 1, 1, v20, 0);
        v11->_doc_ids = v21;
        if (v21 != -1)
        {
          v22 = v28.st_size;
          v11->_doc_ids_limit = v28.st_size >> 3;
          v11->_doc_ids_map_size = v22;
        }
      }

      close(v20);
    }

    snprintf(__str, 0x400uLL, "%s/%sindexGroups", path, v11->_name);
    v23 = open(__str, 0);
    if (v23 != -1)
    {
      v24 = v23;
      if (sub_10001B1E8(__str, &v28) != -1)
      {
        v25 = mmap(0, v28.st_size, 1, 1, v24, 0);
        v11->_groups = v25;
        if (v25 != -1)
        {
          v26 = v28.st_size;
          v11->_groups_limit = v28.st_size >> 3;
          v11->_groups_map_size = v26;
        }
      }

      close(v24);
    }
  }

  return v11;
}

- (void)dealloc
{
  close([(TermIndex *)self postings_fd]);
  if ([(TermIndex *)self term_ids_map_size])
  {
    munmap([(TermIndex *)self term_ids], [(TermIndex *)self term_ids_map_size]);
  }

  if ([(TermIndex *)self groups_map_size])
  {
    munmap([(TermIndex *)self groups], [(TermIndex *)self groups_map_size]);
  }

  if ([(TermIndex *)self doc_ids_map_size])
  {
    munmap([(TermIndex *)self doc_ids], [(TermIndex *)self doc_ids_map_size]);
  }

  v3.receiver = self;
  v3.super_class = TermIndex;
  [(TermIndex *)&v3 dealloc];
}

- (unint64_t)oidForDocID:(unsigned int)d
{
  if (d && self->_doc_ids_limit > d)
  {
    return self->_doc_ids[d];
  }

  else
  {
    return 0;
  }
}

- (unsigned)groupForDocID:(unsigned int)d
{
  groups = self->_groups;
  if (!groups)
  {
    goto LABEL_7;
  }

  if (!self->_coreSpotlight)
  {
    if (self->_groups_map_size > (4 * d + 4) / 5uLL)
    {
      return (groups[d / 5uLL] >> (6 * (d % 5))) & 0x3F;
    }

LABEL_7:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (self->_groups_map_size <= d)
  {
    goto LABEL_7;
  }

  LOBYTE(v4) = *(groups + d);
  return v4;
}

- (void)directoryStoreIterate:(id)iterate
{
  iterateCopy = iterate;
  [(TermIndex *)self term_ids];
  [(TermIndex *)self term_ids_limit];
  [(TermIndex *)self term_ids_map_size];
  [(TermIndex *)self compact];
  index = self->_index;
  cindex = self->_cindex;
  v8 = iterateCopy;
  v7 = iterateCopy;
  _SIDirectoryStoreIterate();
}

- (unint64_t)postingCount:(unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A270;
  v5[3] = &unk_100034FD0;
  v5[4] = &v6;
  [(TermIndex *)self getPostings:count block:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)getPostings:(unint64_t)postings block:(id)block
{
  blockCopy = block;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A414;
  v12[3] = &unk_100034FF8;
  v12[4] = v14;
  compact = [(TermIndex *)self compact];
  v6 = objc_retainBlock(v12);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A48C;
  v10[3] = &unk_100035020;
  v7 = blockCopy;
  v11 = v7;
  v8 = objc_retainBlock(v10);
  v9 = sub_10001AB3C([(TermIndex *)self postings_fd], [(TermIndex *)self base], v6, v8);
  sub_10001AB9C();
  j__free(v9);

  _Block_object_dispose(v14, 8);
}

- (void)getTerms:(id)terms
{
  termsCopy = terms;
  index = self->_index;
  cindex = self->_cindex;
  v8 = termsCopy;
  v7 = termsCopy;
  _SITermIndexIterate();
}

- (void)docIDsIterate:(id)iterate
{
  iterateCopy = iterate;
  v8 = 0;
  doc_ids_limit = self->_doc_ids_limit;
  if (doc_ids_limit >= 2)
  {
    for (i = 1; i < doc_ids_limit; ++i)
    {
      v7 = self->_doc_ids[i];
      if (v7)
      {
        iterateCopy[2](iterateCopy, i, v7, [(TermIndex *)self groupForDocID:i], &v8);
        doc_ids_limit = self->_doc_ids_limit;
      }
    }
  }
}

@end