@interface NEHasher
+ (id)hashObject:(id)a3;
+ (id)hashObject:(id)a3 withClassPrefixWhitelist:(id)a4;
- (BOOL)decodeBoolForKey:(id)a3;
- (NEHasher)init;
- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4;
- (double)decodeDoubleForKey:(id)a3;
- (float)decodeFloatForKey:(id)a3;
- (id)decodeDataObject;
- (id)finishHashing;
- (int)decodeInt32ForKey:(id)a3;
- (int)decodeIntForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (int64_t)decodeIntegerForKey:(id)a3;
- (void)dealloc;
- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4;
- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4;
- (void)encodeDataObject:(id)a3;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
@end

@implementation NEHasher

- (int)decodeIntForKey:(id)a3
{
  v4 = 0;
  [(NEHasher *)self decodeValueOfObjCType:"i" at:&v4 size:4];
  return v4;
}

- (int64_t)decodeIntegerForKey:(id)a3
{
  v4 = 0;
  [(NEHasher *)self decodeValueOfObjCType:"q" at:&v4 size:8];
  return v4;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v4 = 0;
  [(NEHasher *)self decodeValueOfObjCType:"q" at:&v4 size:8];
  return v4;
}

- (int)decodeInt32ForKey:(id)a3
{
  v4 = 0;
  [(NEHasher *)self decodeValueOfObjCType:"i" at:&v4 size:4];
  return v4;
}

- (float)decodeFloatForKey:(id)a3
{
  v4 = 0.0;
  [(NEHasher *)self decodeValueOfObjCType:"f" at:&v4 size:4];
  return v4;
}

- (double)decodeDoubleForKey:(id)a3
{
  v4 = 0.0;
  [(NEHasher *)self decodeValueOfObjCType:"d" at:&v4 size:8];
  return v4;
}

- (const)decodeBytesForKey:(id)a3 returnedLength:(unint64_t *)a4
{
  v5 = self;

  return [(NEHasher *)v5 decodeBytesWithReturnedLength:a4];
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v4 = 0;
  [(NEHasher *)self decodeValueOfObjCType:"B" at:&v4 size:1];
  return v4;
}

- (id)decodeDataObject
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"NEHasherInvalidOperationException" reason:@"NEHasher cannot be used as a decoder" userInfo:0];
  objc_exception_throw(v2);
}

- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:@"NEHasherInvalidOperationException" reason:@"NEHasher cannot be used as a decoder" userInfo:0];
  objc_exception_throw(v4);
}

- (void)encodeBytes:(const void *)a3 length:(unint64_t)a4
{
  if (a3 && a4)
  {
    if (self)
    {
      self = self->_sha1Context;
    }

    CC_SHA1_Update(self, a3, a4);
  }
}

- (void)encodeDataObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      if (self)
      {
        self = self->_sha1Context;
      }

      v5 = v6;
      CC_SHA1_Update(self, [v6 bytes], objc_msgSend(v6, "length"));
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_60;
  }

  v5 = self;
  v6 = *a3;
  v7 = 1;
  if (v6 > 98)
  {
    if (v6 <= 104)
    {
      if (v6 == 99)
      {
        goto LABEL_38;
      }

      if (v6 != 100)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    if (v6 != 105)
    {
      if (v6 != 108 && v6 != 113)
      {
        goto LABEL_32;
      }

LABEL_37:
      v7 = 8;
      goto LABEL_38;
    }

LABEL_43:
    v7 = 4;
    if (self)
    {
      goto LABEL_39;
    }

LABEL_44:
    v23 = 0;
    goto LABEL_40;
  }

  if (v6 > 72)
  {
    if (v6 != 73)
    {
      if (v6 != 76 && v6 != 81)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    goto LABEL_43;
  }

  if ((v6 - 66) >= 2)
  {
    if (v6 == 64)
    {
      v8 = *a4;
      v9 = v8;
      if (!v8)
      {
LABEL_59:

LABEL_60:
        v29 = *MEMORY[0x1E69E9840];
        return;
      }

      if (isa_nsdictionary(v8))
      {
        v10 = v9;
        [v10 allKeys];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v11 = v63 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v60 objects:v68 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v61;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v61 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (!isa_nsstring(*(*(&v60 + 1) + 8 * i)))
              {

                v16 = ne_log_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "Not hashing dictionary containing one or more non-string keys", buf, 2u);
                }

                goto LABEL_56;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v16 = [v11 sortedArrayUsingSelector:NSSelectorFromString(&cfstr_Compare.isa)];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v57;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v57 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [v10 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * j)];
              [(NEHasher *)v5 encodeObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v56 objects:v67 count:16];
          }

          while (v18);
        }

LABEL_56:

LABEL_57:
        goto LABEL_58;
      }

      if (isa_nsarray(v9))
      {
        v10 = v9;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v25 = [v10 countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v53;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v53 != v27)
              {
                objc_enumerationMutation(v10);
              }

              [(NEHasher *)v5 encodeObject:*(*(&v52 + 1) + 8 * k)];
            }

            v26 = [v10 countByEnumeratingWithState:&v52 objects:v66 count:16];
          }

          while (v26);
        }

LABEL_58:

        goto LABEL_59;
      }

      if (isa_nsdata(v9))
      {
        [(NEHasher *)v5 encodeDataObject:v9];
        goto LABEL_59;
      }

      if (isa_nsstring(v9))
      {
        v30 = [v9 UTF8String];
        if (v5)
        {
LABEL_65:
          v5 = v5->_sha1Context;
        }
      }

      else
      {
        if (isa_nsnumber(v9))
        {
          [v9 doubleValue];
          *buf = v34;
          if (v5)
          {
            sha1Context = v5->_sha1Context;
          }

          else
          {
            sha1Context = 0;
          }

          v33 = buf;
          v31 = 8;
          goto LABEL_75;
        }

        if (isa_nsuuid(v9))
        {
          *buf = 0uLL;
          [v9 getUUIDBytes:buf];
          if (v5)
          {
            sha1Context = v5->_sha1Context;
          }

          else
          {
            sha1Context = 0;
          }

          v33 = buf;
          v31 = 16;
          goto LABEL_75;
        }

        if (!isa_nsurl(v9))
        {
          if (isa_neclass())
          {
            [v9 encodeWithCoder:v5];
          }

          else
          {
            if (v5)
            {
              Property = objc_getProperty(v5, v36, 16, 1);
            }

            else
            {
              Property = 0;
            }

            if ([Property count])
            {
              v38 = objc_opt_class();
              v10 = NSStringFromClass(v38);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              if (v5)
              {
                v40 = objc_getProperty(v5, v39, 16, 1);
              }

              else
              {
                v40 = 0;
              }

              v11 = v40;
              v41 = [v11 countByEnumeratingWithState:&v48 objects:v64 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v49;
                while (2)
                {
                  for (m = 0; m != v42; ++m)
                  {
                    if (*v49 != v43)
                    {
                      objc_enumerationMutation(v11);
                    }

                    if ([v10 hasPrefix:{*(*(&v48 + 1) + 8 * m), v48}])
                    {
                      [v9 encodeWithCoder:v5];
                      goto LABEL_57;
                    }
                  }

                  v42 = [v11 countByEnumeratingWithState:&v48 objects:v64 count:16];
                  if (v42)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v45 = ne_log_obj();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v46 = objc_opt_class();
              v47 = NSStringFromClass(v46);
              *buf = 138412290;
              *&buf[4] = v47;
              _os_log_debug_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEBUG, "Not hashing value with class %@", buf, 0xCu);
            }
          }

          goto LABEL_59;
        }

        v35 = [v9 absoluteString];
        v30 = [v35 UTF8String];

        if (v5)
        {
          goto LABEL_65;
        }
      }

      v31 = strlen(v30);
      sha1Context = v5;
      v33 = v30;
LABEL_75:
      CC_SHA1_Update(sha1Context, v33, v31);
      goto LABEL_59;
    }

LABEL_32:
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_debug_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_DEBUG, "Not hashing value with type %s", buf, 0xCu);
    }

    goto LABEL_60;
  }

LABEL_38:
  if (!self)
  {
    goto LABEL_44;
  }

LABEL_39:
  v23 = self->_sha1Context;
LABEL_40:
  v24 = *MEMORY[0x1E69E9840];

  CC_SHA1_Update(v23, a4, v7);
}

- (void)dealloc
{
  if (self)
  {
    sha1Context = self->_sha1Context;
    if (sha1Context)
    {
      free(sha1Context);
    }
  }

  v4.receiver = self;
  v4.super_class = NEHasher;
  [(NEHasher *)&v4 dealloc];
}

- (NEHasher)init
{
  v5.receiver = self;
  v5.super_class = NEHasher;
  v2 = [(NEHasher *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    v2->_sha1Context = v3;
    CC_SHA1_Init(v3);
  }

  return v2;
}

+ (id)hashObject:(id)a3 withClassPrefixWhitelist:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NEHasher);
  v9 = v7;
  if (v7)
  {
    objc_setProperty_atomic(v7, v8, v6, 16);
    [(NEHasher *)v9 encodeRootObject:v5];
    v10 = [(NEHasher *)v9 finishHashing];
  }

  else
  {
    [0 encodeRootObject:v5];
    v10 = 0;
  }

  return v10;
}

- (id)finishHashing
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = *(a1 + 8)) != 0)
  {
    CC_SHA1_Final(md, v2);
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
    free(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)hashObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NEHasher);
  [(NEHasher *)v4 encodeRootObject:v3];

  v5 = [(NEHasher *)v4 finishHashing];

  return v5;
}

@end