@interface _NSJSONReader
+ (BOOL)validForJSON:(id)n depth:(unint64_t)depth allowFragments:(BOOL)fragments;
- (id)parseData:(id)data options:(unint64_t)options error:(id *)error;
- (id)parseStream:(id)stream options:(unint64_t)options error:(id *)error;
@end

@implementation _NSJSONReader

+ (BOOL)validForJSON:(id)n depth:(unint64_t)depth allowFragments:(BOOL)fragments
{
  v20 = *MEMORY[0x1E69E9840];
  if (depth > 0x1FF)
  {
    goto LABEL_2;
  }

  fragmentsCopy = fragments;
  if (_NSIsNSDictionary())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51___NSJSONReader_validForJSON_depth_allowFragments___block_invoke;
    v15[3] = &unk_1E69F6F40;
    v15[4] = &v16;
    v15[5] = depth;
    [n enumerateKeysAndObjectsUsingBlock:v15];
LABEL_7:
    v5 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
    return v5 & 1;
  }

  if (_NSIsNSArray())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51___NSJSONReader_validForJSON_depth_allowFragments___block_invoke_2;
    v14[3] = &unk_1E69F6F68;
    v14[4] = &v16;
    v14[5] = depth;
    [n enumerateObjectsUsingBlock:v14];
    goto LABEL_7;
  }

  if (!fragmentsCopy)
  {
    goto LABEL_2;
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_11:
    v5 = 1;
    return v5 & 1;
  }

  if (_NSIsNSString())
  {
    v10 = [n dataUsingEncoding:4 allowLossyConversion:0] == 0;
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (_NSIsNSNumber())
    {
      v11 = *[n objCType];
      if (v11 == 100)
      {
        [n doubleValue];
        [n doubleValue];
        if (fabs(v13) != INFINITY)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v11 != 102)
        {
          goto LABEL_11;
        }

        [n floatValue];
        [n floatValue];
        if (fabsf(v12) != INFINITY)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_2:
    v5 = 0;
    return v5 & 1;
  }

  v16 = 0;
  v17 = 0;
  LODWORD(v18) = 0;
  if (!n)
  {
    goto LABEL_11;
  }

  [n decimalValue];
  v10 = (v16 & 0x1F00) == 4096;
LABEL_17:
  v5 = !v10;
  return v5 & 1;
}

- (id)parseData:(id)data options:(unint64_t)options error:(id *)error
{
  dataCopy = data;
  v60 = *MEMORY[0x1E69E9840];
  if ([data length])
  {
    if (!self)
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_51;
    }

    bytes = [dataCopy bytes];
    v10 = [dataCopy length];
    if (v10 < 5)
    {
      if (v10 < 3)
      {
        goto LABEL_61;
      }

      v11 = *bytes;
      goto LABEL_15;
    }

    v11 = *bytes;
    if (v11 == 254)
    {
      v19 = bytes[1];
      if (v19 != 255)
      {
        goto LABEL_60;
      }

      if (bytes[2] || bytes[3] != 255)
      {
        v16 = 2;
        goto LABEL_25;
      }

      v17 = 2617245952;
    }

    else
    {
      if (*bytes)
      {
LABEL_15:
        if (v11 == 254)
        {
          if (bytes[1] == 255)
          {
            v17 = 2415919360;
            goto LABEL_50;
          }
        }

        else if (v11 == 255 && bytes[1] == 254)
        {
          v17 = 2483028224;
LABEL_50:
          v16 = 2;
          goto LABEL_51;
        }

        if (v10 < 4)
        {
          goto LABEL_61;
        }

        if (v11 == 239)
        {
          if (bytes[1] == 187)
          {
            v22 = bytes[2];
            if (v22 == 191)
            {
              v16 = 3;
            }

            else
            {
              v16 = 0;
            }

            if (v10 < 5 || v22 == 191)
            {
              goto LABEL_62;
            }
          }

          else if (v10 < 5)
          {
            goto LABEL_61;
          }

          goto LABEL_59;
        }

        if (v10 < 5)
        {
          goto LABEL_61;
        }

        if (v11)
        {
LABEL_59:
          v19 = bytes[1];
LABEL_60:
          if (v19)
          {
            goto LABEL_61;
          }

          v16 = 0;
          v48 = bytes[3];
          if (bytes[2])
          {
            v17 = 2483028224;
          }

          else
          {
            v17 = 2617245952;
          }

          if (!v48)
          {
            goto LABEL_51;
          }

LABEL_62:
          v26 = malloc_type_calloc(1uLL, 0x2038uLL, 0x109004015BCA0ECuLL);
          v26->super.isa = [dataCopy bytes];
          v27 = [dataCopy length];
          v26[5].super.isa = 1;
          v26[2].super.isa = v27;
          v26[3].super.isa = v16;
          v26[1].super.isa = options;
          if (skipJSONWhitespace(v26, error, (options & 0x10) != 0) && (v28 = v26[3].super.isa, v26[2].super.isa > v28))
          {
            if ((options & 0x10) != 0)
            {
              v29 = newJSONObject(v26, 1, error);
LABEL_86:
              v39 = v29;
              if (v29 && v26[3].super.isa < v26[2].super.isa)
              {
                if ((skipJSONWhitespace(v26, error, 1) & 1) == 0)
                {
LABEL_95:

                  goto LABEL_75;
                }

                isa = v26[3].super.isa;
                if (isa != v26[2].super.isa)
                {
                  if (error)
                  {
                    v43 = v26[6].super.isa;
                    v33 = isa >= v43;
                    v44 = isa - v43;
                    if (v33)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    v46 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Garbage at end", v26[5].super.isa, v45];
                    v47 = [[NSNumber alloc] initWithUnsignedInteger:v26[3].super.isa];
                    v56 = @"NSDebugDescription";
                    v57 = @"NSJSONSerializationErrorIndex";
                    v58 = v46;
                    v59 = v47;
                    *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v56 count:2]);
                  }

                  goto LABEL_95;
                }
              }

LABEL_78:
              for (i = 9; i != 1033; i += 4)
              {
                v41 = v26[i].super.isa;
                if (v41)
                {
                }
              }

              free(v26);
              return v39;
            }

            if ((options & 4) != 0 || (*(v26->super.isa + v28) | 0x20) == 0x7B)
            {
              v29 = newJSONValue(v26, error);
              goto LABEL_86;
            }

            if (!error)
            {
              goto LABEL_75;
            }

            v49 = v26[6].super.isa;
            v33 = v28 >= v49;
            v50 = v28 - v49;
            if (v33)
            {
              v51 = v50;
            }

            else
            {
              v51 = 0;
            }

            v36 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"JSON text did not start with array or object and option to allow fragments not set.", v26[5].super.isa, v51];
          }

          else
          {
            if ((options & 0x10) != 0)
            {
              if (options)
              {
                v30 = MEMORY[0x1E695DF90];
              }

              else
              {
                v30 = MEMORY[0x1E695DF20];
              }

              v39 = objc_alloc_init(v30);
              goto LABEL_78;
            }

            if (!error)
            {
LABEL_75:
              v39 = 0;
              goto LABEL_78;
            }

            v31 = v26[3].super.isa;
            v32 = v26[6].super.isa;
            v33 = v31 >= v32;
            v34 = v31 - v32;
            if (v33)
            {
              v35 = v34;
            }

            else
            {
              v35 = 0;
            }

            v36 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"JSON text did not have any content", v26[5].super.isa, v35];
          }

          v37 = v36;
          v38 = [[NSNumber alloc] initWithUnsignedInteger:v26[3].super.isa];
          v56 = @"NSDebugDescription";
          v57 = @"NSJSONSerializationErrorIndex";
          v58 = v37;
          v59 = v38;
          *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v56 count:2]);

          goto LABEL_75;
        }

        v15 = bytes[2];
        if (!bytes[1])
        {
          if (!bytes[2])
          {
            goto LABEL_101;
          }

LABEL_61:
          v16 = 0;
          goto LABEL_62;
        }

        goto LABEL_12;
      }

      v15 = bytes[2];
      if (bytes[1])
      {
LABEL_12:
        if (v15)
        {
          goto LABEL_61;
        }

        v16 = 0;
        if (!bytes[3])
        {
          goto LABEL_62;
        }

LABEL_25:
        v17 = 2415919360;
LABEL_51:
        v23 = -[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", [dataCopy bytes] + v16, objc_msgSend(dataCopy, "length") - v16, v17);
        if (v23)
        {
          v24 = [(NSString *)v23 dataUsingEncoding:4];
          if (self)
          {
            dataCopy = v24;
            goto LABEL_61;
          }

          return 0;
        }

        if (!error)
        {
          return 0;
        }

        v52 = @"NSDebugDescription";
        v53 = @"Unable to convert data to a string using the detected encoding. The data may be corrupt.";
        v12 = MEMORY[0x1E695DF20];
        v13 = &v53;
        v14 = &v52;
LABEL_56:
        v25 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [v12 dictionaryWithObjects:v13 forKeys:v14 count:1]);
        result = 0;
        *error = v25;
        return result;
      }

      if (!bytes[2])
      {
LABEL_101:
        v16 = 0;
        if (!bytes[3])
        {
          goto LABEL_62;
        }

        v17 = 2550137088;
        goto LABEL_51;
      }

      if (v15 != 254 || bytes[3] != 255)
      {
        goto LABEL_61;
      }

      v17 = 2550137088;
    }

    v16 = 4;
    goto LABEL_51;
  }

  if ((options & 0x10) == 0)
  {
    if (!error)
    {
      return 0;
    }

    v54 = @"NSDebugDescription";
    v55 = @"Unable to parse empty data.";
    v12 = MEMORY[0x1E695DF20];
    v13 = &v55;
    v14 = &v54;
    goto LABEL_56;
  }

  if (options)
  {
    v18 = MEMORY[0x1E695DF90];
  }

  else
  {
    v18 = MEMORY[0x1E695DF20];
  }

  v20 = objc_alloc_init(v18);

  return v20;
}

- (id)parseStream:(id)stream options:(unint64_t)options error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  while ([stream streamStatus] == 2 || objc_msgSend(stream, "streamStatus") == 3)
  {
    if ([stream hasBytesAvailable])
    {
      v11 = [stream read:v10 maxLength:4096];
      if (v11 < 0)
      {
        if (error)
        {
          v13 = @"NSUnderlyingError";
          v14[0] = [stream streamError];
          *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1]);
        }

        free(v10);
        return 0;
      }

      if (v11)
      {
        [data appendBytes:v10 length:v11];
      }
    }
  }

  free(v10);

  return [(_NSJSONReader *)self parseData:data options:options error:error];
}

@end