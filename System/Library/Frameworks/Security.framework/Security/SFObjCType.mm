@interface SFObjCType
+ (id)typeForEncoding:(const char *)encoding;
+ (id)typeForValue:(id)value;
- (SFObjCType)initWithCode:(int64_t)code encoding:(id)encoding name:(id)name className:(id)className size:(unint64_t)size flags:(unint64_t)flags;
- (id)objectWithBytes:(const void *)bytes;
- (void)getBytes:(void *)bytes forObject:(id)object;
@end

@implementation SFObjCType

- (void)getBytes:(void *)bytes forObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy getValue:bytes];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unsupported unboxing type: %@", self->_name}];
  }
}

- (id)objectWithBytes:(const void *)bytes
{
  switch(self->_code)
  {
    case 0:
      v4 = [MEMORY[0x1E696AD98] numberWithChar:*bytes];
      break;
    case 1:
      v4 = [MEMORY[0x1E696AD98] numberWithShort:*bytes];
      break;
    case 2:
      v4 = [MEMORY[0x1E696AD98] numberWithInt:*bytes];
      break;
    case 3:
      v4 = [MEMORY[0x1E696AD98] numberWithLong:*bytes];
      break;
    case 4:
      v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*bytes];
      break;
    case 5:
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*bytes];
      break;
    case 6:
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*bytes];
      break;
    case 7:
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*bytes];
      break;
    case 8:
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*bytes];
      break;
    case 9:
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*bytes];
      break;
    case 0xALL:
      LODWORD(v3) = *bytes;
      v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
      break;
    case 0xBLL:
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:*bytes];
      break;
    case 0xCLL:
      v4 = [MEMORY[0x1E696AD98] numberWithBool:*bytes];
      break;
    case 0xFLL:
      v4 = *bytes;
      break;
    default:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"For class %@, Unsupported boxing type: %@", self->_className, self->_name}];
      v4 = 0;
      break;
  }

  return v4;
}

- (SFObjCType)initWithCode:(int64_t)code encoding:(id)encoding name:(id)name className:(id)className size:(unint64_t)size flags:(unint64_t)flags
{
  encodingCopy = encoding;
  nameCopy = name;
  classNameCopy = className;
  v21.receiver = self;
  v21.super_class = SFObjCType;
  v18 = [(SFObjCType *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_code = code;
    objc_storeStrong(&v18->_encoding, encoding);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_className, className);
    v19->_size = size;
    v19->_flags = flags;
  }

  return v19;
}

+ (id)typeForValue:(id)value
{
  objCType = [value objCType];

  return [SFObjCType typeForEncoding:objCType];
}

+ (id)typeForEncoding:(const char *)encoding
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  if (typeForEncoding__once != -1)
  {
    dispatch_once(&typeForEncoding__once, &__block_literal_global_4271);
  }

  v5 = *encoding;
  if (v5 <= 0x5A)
  {
    if (*encoding <= 0x41u)
    {
      if (*encoding <= 0x29u)
      {
        if (v5 != 35)
        {
          if (v5 == 40)
          {
            v6 = [SFObjCType alloc];
            v7 = @"union";
            v8 = 20;
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v9 = _SFObjCTypesByCode;
        v10 = 16;
      }

      else
      {
        switch(v5)
        {
          case '*':
            v9 = _SFObjCTypesByCode;
            v10 = 14;
            break;
          case ':':
            v9 = _SFObjCTypesByCode;
            v10 = 17;
            break;
          case '@':
            if ([v4 length] >= 4 && objc_msgSend(v4, "characterAtIndex:", 1) == 34 && objc_msgSend(v4, "characterAtIndex:", objc_msgSend(v4, "length") - 1) == 34)
            {
              v11 = [v4 substringWithRange:{2, objc_msgSend(v4, "length") - 3}];
              v12 = [v11 stringByAppendingString:@"*"];
              v13 = [[SFObjCType alloc] initWithCode:15 encoding:v4 name:v12 className:v11 size:8 flags:0];

              goto LABEL_65;
            }

            v9 = _SFObjCTypesByCode;
            v10 = 15;
            break;
          default:
            goto LABEL_59;
        }
      }
    }

    else if (*encoding > 0x4Bu)
    {
      switch(v5)
      {
        case 'L':
          v9 = _SFObjCTypesByCode;
          v10 = 8;
          break;
        case 'Q':
          v9 = _SFObjCTypesByCode;
          v10 = 9;
          break;
        case 'S':
          v9 = _SFObjCTypesByCode;
          v10 = 6;
          break;
        default:
          goto LABEL_59;
      }
    }

    else
    {
      switch(v5)
      {
        case 'B':
          v9 = _SFObjCTypesByCode;
          v10 = 12;
          break;
        case 'C':
          v9 = _SFObjCTypesByCode;
          v10 = 5;
          break;
        case 'I':
          v9 = _SFObjCTypesByCode;
          v10 = 7;
          break;
        default:
          goto LABEL_59;
      }
    }

    goto LABEL_63;
  }

  if (*encoding > 0x68u)
  {
    if (*encoding > 0x72u)
    {
      switch(v5)
      {
        case 's':
          v9 = _SFObjCTypesByCode;
          v10 = 1;
          break;
        case 'v':
          v9 = _SFObjCTypesByCode;
          v10 = 13;
          break;
        case '{':
          v6 = [SFObjCType alloc];
          v7 = @"structure";
          v8 = 19;
          goto LABEL_60;
        default:
LABEL_59:
          v6 = [SFObjCType alloc];
          v7 = @"unknown";
          v8 = 23;
          goto LABEL_60;
      }
    }

    else
    {
      switch(v5)
      {
        case 'i':
          v9 = _SFObjCTypesByCode;
          v10 = 2;
          break;
        case 'l':
          v9 = _SFObjCTypesByCode;
          v10 = 3;
          break;
        case 'q':
          v9 = _SFObjCTypesByCode;
          v10 = 4;
          break;
        default:
          goto LABEL_59;
      }
    }

LABEL_63:
    v16 = [v9 objectAtIndexedSubscript:v10];
    goto LABEL_64;
  }

  if (*encoding > 0x62u)
  {
    switch(v5)
    {
      case 'c':
        v9 = _SFObjCTypesByCode;
        v10 = 0;
        break;
      case 'd':
        v9 = _SFObjCTypesByCode;
        v10 = 11;
        break;
      case 'f':
        v9 = _SFObjCTypesByCode;
        v10 = 10;
        break;
      default:
        goto LABEL_59;
    }

    goto LABEL_63;
  }

  if (v5 == 91)
  {
    v6 = [SFObjCType alloc];
    v7 = @"array";
    v8 = 18;
    goto LABEL_60;
  }

  if (v5 != 94)
  {
    if (v5 == 98)
    {
      v6 = [SFObjCType alloc];
      v7 = @"bitfield";
      v8 = 21;
LABEL_60:
      v14 = v4;
      v15 = 0;
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v6 = [SFObjCType alloc];
  v7 = @"pointer";
  v8 = 22;
  v14 = v4;
  v15 = 8;
LABEL_61:
  v16 = [(SFObjCType *)v6 initWithCode:v8 encoding:v14 name:v7 className:0 size:v15 flags:0];
LABEL_64:
  v13 = v16;
LABEL_65:

  return v13;
}

void __30__SFObjCType_typeForEncoding___block_invoke()
{
  v20[17] = *MEMORY[0x1E69E9840];
  v19 = [[SFObjCType alloc] initWithCode:0 encoding:@"c" name:@"char" className:0 size:1 flags:1];
  v20[0] = v19;
  v18 = [[SFObjCType alloc] initWithCode:1 encoding:@"s" name:@"short" className:0 size:2 flags:1];
  v20[1] = v18;
  v17 = [[SFObjCType alloc] initWithCode:2 encoding:@"i" name:@"int" className:0 size:4 flags:1];
  v20[2] = v17;
  v16 = [[SFObjCType alloc] initWithCode:3 encoding:@"l" name:@"long" className:0 size:8 flags:1];
  v20[3] = v16;
  v15 = [[SFObjCType alloc] initWithCode:4 encoding:@"q" name:@"long long" className:0 size:8 flags:1];
  v20[4] = v15;
  v14 = [[SFObjCType alloc] initWithCode:5 encoding:@"C" name:@"unsigned char" className:0 size:1 flags:1];
  v20[5] = v14;
  v13 = [[SFObjCType alloc] initWithCode:6 encoding:@"S" name:@"unsigned short" className:0 size:2 flags:1];
  v20[6] = v13;
  v0 = [[SFObjCType alloc] initWithCode:7 encoding:@"I" name:@"unsigned int" className:0 size:4 flags:1];
  v20[7] = v0;
  v1 = [[SFObjCType alloc] initWithCode:8 encoding:@"L" name:@"unsigned long" className:0 size:8 flags:1];
  v20[8] = v1;
  v2 = [[SFObjCType alloc] initWithCode:9 encoding:@"Q" name:@"unsigned long long" className:0 size:8 flags:1];
  v20[9] = v2;
  v3 = [[SFObjCType alloc] initWithCode:10 encoding:@"f" name:@"float" className:0 size:4 flags:2];
  v20[10] = v3;
  v4 = [[SFObjCType alloc] initWithCode:11 encoding:@"d" name:@"double" className:0 size:8 flags:2];
  v20[11] = v4;
  v5 = [[SFObjCType alloc] initWithCode:12 encoding:@"B" name:@"BOOL" className:0 size:1 flags:1];
  v20[12] = v5;
  v6 = [[SFObjCType alloc] initWithCode:13 encoding:@"v" name:@"void" className:0 size:1 flags:0];
  v20[13] = v6;
  v7 = [[SFObjCType alloc] initWithCode:14 encoding:@"*" name:@"char*" className:0 size:8 flags:0];
  v20[14] = v7;
  v8 = [[SFObjCType alloc] initWithCode:15 encoding:@"@" name:@"id" className:0 size:8 flags:0];
  v20[15] = v8;
  v9 = [[SFObjCType alloc] initWithCode:16 encoding:@"#" name:@"Class" className:0 size:8 flags:0];
  v20[16] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:17];
  v11 = _SFObjCTypesByCode;
  _SFObjCTypesByCode = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end