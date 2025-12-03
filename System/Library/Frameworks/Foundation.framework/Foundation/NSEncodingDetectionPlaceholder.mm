@interface NSEncodingDetectionPlaceholder
+ (id)placeholderForDetector:(id)detector;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation NSEncodingDetectionPlaceholder

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  bytes = self->bytes;
  if (bytes)
  {
    free(bytes);
    self->bytes = 0;
  }

  v4.receiver = self;
  v4.super_class = NSEncodingDetectionPlaceholder;
  [(NSEncodingDetectionPlaceholder *)&v4 dealloc];
}

+ (id)placeholderForDetector:(id)detector
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED43F530 != -1)
  {
    dispatch_once(&qword_1ED43F530, &__block_literal_global);
  }

  nsEncoding = [detector nsEncoding];
  cfEncoding = [detector cfEncoding];
  os_unfair_lock_lock(&_MergedGlobals_90);
  v6 = [qword_1ED43F538 objectForKey:cfEncoding];
  os_unfair_lock_unlock(&_MergedGlobals_90);
  if (!v6)
  {
    v8 = [@"#<^_NSEDR_^#<" lengthOfBytesUsingEncoding:nsEncoding];
    p_isa = v8;
    if (!v8)
    {
      return p_isa;
    }

    v20[0] = 0;
    if (cfEncoding - 2080 <= 2)
    {
      v10 = malloc_type_malloc(v8 + 3, 0x100004077774924uLL);
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      *v10 = 10267;
      *(v10 + 2) = 66;
      if ([@"#<^_NSEDR_^#<" getBytes:v10 + 3 maxLength:p_isa usedLength:v20 encoding:nsEncoding options:0 range:0 remainingRange:{objc_msgSend(@"#<^_NSEDR_^#<", "length"), 0}])
      {
        v20[0] += 3;
        v12 = v11;
LABEL_35:
        p_isa = 0;
        if (v12)
        {
          if (v11)
          {
            v18 = objc_alloc_init(NSEncodingDetectionPlaceholder);
            p_isa = &v18->super.isa;
            if (v18)
            {
              v18->nsEncoding = nsEncoding;
              v18->cfEncoding = cfEncoding;
              v18->string = @"#<^_NSEDR_^#<";
              p_isa[4] = v12;
              p_isa[5] = v20[0];
              p_isa[6] = v11;
              v19 = p_isa;
              os_unfair_lock_lock(&_MergedGlobals_90);
              [qword_1ED43F538 setObject:p_isa forKey:cfEncoding];
              os_unfair_lock_unlock(&_MergedGlobals_90);
            }
          }
        }

        return p_isa;
      }

      v16 = v11;
LABEL_21:
      free(v16);
      return 0;
    }

    v12 = malloc_type_malloc(v8, 0x100004077774924uLL);
    if (![@"#<^_NSEDR_^#<" getBytes:v12 maxLength:p_isa usedLength:v20 encoding:nsEncoding options:0 range:0 remainingRange:{objc_msgSend(@"#<^_NSEDR_^#<", "length"), 0}])
    {
      v16 = v12;
      goto LABEL_21;
    }

    HIDWORD(v14) = cfEncoding - 256;
    LODWORD(v14) = cfEncoding - 256;
    v13 = v14 >> 26;
    if (v13 <= 7)
    {
      if (((1 << v13) & 0x31) != 0)
      {
        v17 = *v12;
        if (v17 == 65534 || v17 == 65279)
        {
          v11 = v12 + 1;
          v15 = v20[0] - 2;
          goto LABEL_27;
        }
      }

      else if (((1 << v13) & 0xC8) != 0)
      {
        if (*v12 == 65534 || *v12 == 65279)
        {
          v11 = v12 + 2;
          v15 = v20[0] - 4;
LABEL_27:
          v20[0] = v15;
          goto LABEL_35;
        }
      }

      else if (v13 == 2)
      {
        v15 = v20[0] - 3;
        if (v20[0] >= 3uLL && *v12 == 239 && *(v12 + 1) == 187 && *(v12 + 2) == 191)
        {
          v11 = (v12 + 3);
          goto LABEL_27;
        }
      }
    }

    v11 = v12;
    goto LABEL_35;
  }

  return v6;
}

NSMapTable *__57__NSEncodingDetectionPlaceholder_placeholderForDetector___block_invoke()
{
  result = [[NSMapTable alloc] initWithKeyOptions:1282 valueOptions:0 capacity:16];
  qword_1ED43F538 = result;
  return result;
}

- (id)debugDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSEncodingDetectionPlaceholder;
  return [NSString stringWithFormat:@"%@ string:%@ nsEncoding:%lu cfEncoding:%u bytes:%p bytesLength:%lu bytesStart:%p", [(NSEncodingDetectionPlaceholder *)&v3 debugDescription], self->string, self->nsEncoding, self->cfEncoding, self->bytes, self->bytesLength, self->bytesStart];
}

@end