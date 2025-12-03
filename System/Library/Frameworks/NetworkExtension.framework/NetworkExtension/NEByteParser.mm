@interface NEByteParser
- (BOOL)copyBytes:(void *)bytes to:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parseAddressWithFamily:(uint64_t)family;
- (uint64_t)parse16Bits:(uint64_t)result;
- (uint64_t)parse32Bits:(uint64_t)result;
- (uint64_t)parseBytes:(uint64_t)bytes;
- (void)initWithData:(void *)data;
- (void)parseDomainName;
@end

@implementation NEByteParser

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [NEByteParser allocWithZone:zone];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  return [(NEByteParser *)v5 initWithData:?];
}

- (void)initWithData:(void *)data
{
  v4 = a2;
  if (data)
  {
    v8.receiver = data;
    v8.super_class = NEByteParser;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    data = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      bytes = [v4 bytes];
      data[1] = 0;
      data[3] = bytes;
      data[4] = bytes;
    }
  }

  return data;
}

- (BOOL)copyBytes:(void *)bytes to:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = &a2[*(self + 8)];
  v7 = [objc_getProperty(self a2];
  if (v6 > v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(self + 8);
      v12 = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = v11;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to advance by %lu bytes from offset %lu", &v12, 0x16u);
    }
  }

  else if (bytes)
  {
    memcpy(bytes, *(self + 32), a2);
  }

  result = v6 <= v7;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)parseDomainName
{
  selfCopy = self;
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = objc_getProperty(self, a2, 16, 1);
    bzero(v12, 0x3F1uLL);
    v4 = selfCopy[3];
    v11 = selfCopy[4];
    if (_NE_DNSMessageExtractDomainNameString(v4, [v3 length], selfCopy[4], v12, &v11) || (v6 = selfCopy[4], v7 = v11 - v6, v11 <= v6) || (v8 = selfCopy[1] + v7, v8 > objc_msgSend(objc_getProperty(selfCopy, v5, 16, 1), "length")))
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy[1] += v7;
      selfCopy[4] = v11;
      selfCopy = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (uint64_t)parse16Bits:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v5 = 0;
    v4 = [(NEByteParser *)result copyBytes:&v5 to:?];
    if (v4)
    {
      *(v3 + 32) += 2;
      *(v3 + 8) += 2;
    }

    *a2 = v4;
    return bswap32(v5) >> 16;
  }

  return result;
}

- (uint64_t)parse32Bits:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v5 = 0;
    v4 = [(NEByteParser *)result copyBytes:&v5 to:?];
    if (v4)
    {
      *(v3 + 32) += 4;
      *(v3 + 8) += 4;
    }

    *a2 = v4;
    return bswap32(v5);
  }

  return result;
}

- (uint64_t)parseBytes:(uint64_t)bytes
{
  if (!bytes)
  {
    return 0;
  }

  v4 = *(bytes + 32);
  if (![(NEByteParser *)bytes copyBytes:a2 to:0])
  {
    return 0;
  }

  *(bytes + 32) += a2;
  *(bytes + 8) += a2;
  return v4;
}

- (id)parseAddressWithFamily:(uint64_t)family
{
  if (!family)
  {
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v4 = 16;
    v5 = 4;
  }

  else
  {
    if (a2 != 30)
    {
      goto LABEL_11;
    }

    v4 = 46;
    v5 = 16;
  }

  v6 = *(family + 32);
  if ([(NEByteParser *)family copyBytes:v5 to:0])
  {
    *(family + 32) += v5;
    *(family + 8) += v5;
    if (v6)
    {
      v7 = malloc_type_malloc(v4, 0x100004077774924uLL);
      if (v7)
      {
        v8 = v7;
        if (inet_ntop(a2, v6, v7, v4))
        {
          v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v8 encoding:4];
        }

        else
        {
          v9 = 0;
        }

        free(v8);
        goto LABEL_12;
      }
    }
  }

LABEL_11:
  v9 = 0;
LABEL_12:

  return v9;
}

@end