@interface __NSPlaceholderFileSecurity
- (__NSPlaceholderFileSecurity)init;
- (__NSPlaceholderFileSecurity)initWithCoder:(id)a3;
- (__NSPlaceholderFileSecurity)initWithFileSec:(_filesec *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation __NSPlaceholderFileSecurity

- (__NSPlaceholderFileSecurity)initWithFileSec:(_filesec *)a3
{
  if (self == &___immutablePlaceholderFileSecurity)
  {
    return [__NSFileSecurity __new:a3];
  }

  else
  {
    return 0;
  }
}

- (__NSPlaceholderFileSecurity)init
{
  result = filesec_init();
  if (result)
  {

    return [(__NSPlaceholderFileSecurity *)self initWithFileSec:result];
  }

  return result;
}

- (__NSPlaceholderFileSecurity)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (![a3 allowsKeyedCoding])
  {

    objc_exception_throw([NSException exceptionWithName:@"NSInvalidArgumentException" reason:@"FileSecurity cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = @"NSCocoaErrorDomain";
  size = 0;
  v6 = [a3 decodeBytesForKey:@"NS.filesec" returnedLength:&size];
  if (!v6)
  {
    v8 = &off_1EF1B9C30;
    v9 = 4865;
    goto LABEL_6;
  }

  v7 = size;
  if (size - 10313 < 0xFFFFFFFFFFFFD7FFLL)
  {
    v8 = &off_1EF1B9C58;
    v9 = 4864;
LABEL_6:

    v10 = CFErrorCreate(&__kCFAllocatorSystemDefault, v5, v9, v8);
    [a3 failWithError:CFAutorelease(v10)];
    v11 = 0;
    goto LABEL_7;
  }

  v14 = v6;
  if (size < 0x449)
  {
    v16 = v22;
  }

  else
  {
    v15 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v15)
    {
      v5 = @"NSPOSIXErrorDomain";
      v9 = *__error();
      v8 = &off_1EF1B9C80;
      goto LABEL_6;
    }

    v16 = v15;
    v7 = size;
  }

  memcpy(v16, v14, v7);
  v17 = filesec_init();
  v18 = v17;
  if (!v17)
  {
    v5 = @"NSPOSIXErrorDomain";
    v11 = 0;
    v9 = *__error();
    v8 = &off_1EF1B9CA8;
    goto LABEL_45;
  }

  v19 = *v16;
  if (*v16)
  {
    LODWORD(obj_p) = v16[1];
    if (filesec_set_property(v17, FILESEC_OWNER, &obj_p))
    {
      v5 = @"NSPOSIXErrorDomain";
      v11 = 0;
      v9 = *__error();
      v8 = &off_1EF1B9CD0;
      goto LABEL_45;
    }

    v19 = *v16;
  }

  if ((v19 & 2) != 0)
  {
    LODWORD(obj_p) = v16[2];
    if (filesec_set_property(v18, FILESEC_GROUP, &obj_p))
    {
      v5 = @"NSPOSIXErrorDomain";
      v11 = 0;
      v9 = *__error();
      v8 = &off_1EF1B9CF8;
      goto LABEL_45;
    }

    v19 = *v16;
  }

  if ((v19 & 0x10) != 0)
  {
    LOWORD(obj_p) = v16[3];
    if (filesec_set_property(v18, FILESEC_MODE, &obj_p))
    {
      v5 = @"NSPOSIXErrorDomain";
      v11 = 0;
      v9 = *__error();
      v8 = &off_1EF1B9D20;
      goto LABEL_45;
    }

    v19 = *v16;
  }

  if ((v19 & 4) != 0)
  {
    if (filesec_set_property(v18, FILESEC_UUID, v16 + 4))
    {
      v5 = @"NSPOSIXErrorDomain";
      v11 = 0;
      v9 = *__error();
      v8 = &off_1EF1B9D48;
      goto LABEL_45;
    }

    v19 = *v16;
  }

  if ((v19 & 8) != 0)
  {
    if (filesec_set_property(v18, FILESEC_GRPUUID, v16 + 6))
    {
      v5 = @"NSPOSIXErrorDomain";
      v11 = 0;
      v9 = *__error();
      v8 = &off_1EF1B9D70;
      goto LABEL_45;
    }

    v19 = *v16;
  }

  if ((v19 & 0x20) == 0)
  {
    goto LABEL_36;
  }

  obj_p = 0;
  if (!memchr(v16 + 8, 0, size - 64))
  {
    v8 = &off_1EF1B9D98;
LABEL_43:
    v9 = 4864;
    goto LABEL_44;
  }

  obj_p = acl_from_text(v16 + 64);
  if (!obj_p)
  {
    v8 = &off_1EF1B9DC0;
    goto LABEL_43;
  }

  if (!filesec_set_property(v18, FILESEC_ACL, &obj_p))
  {
    acl_free(obj_p);
LABEL_36:
    v11 = [(__NSPlaceholderFileSecurity *)self initWithFileSec:v18, obj_p];
    v8 = &off_1EF1B9C08;
    v9 = 4864;
    goto LABEL_45;
  }

  v5 = @"NSPOSIXErrorDomain";
  v9 = *__error();
  v8 = &off_1EF1B9DE8;
LABEL_44:
  v11 = 0;
LABEL_45:
  if (v16 != v22)
  {
    free(v16);
  }

  if (!v11)
  {
    if (v18)
    {
      filesec_free(v18);
    }

    goto LABEL_6;
  }

LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = __CFLookUpClass("NSFileSecurity");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized FileSecurity object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = __CFLookUpClass("NSFileSecurity");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized FileSecurity object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

@end