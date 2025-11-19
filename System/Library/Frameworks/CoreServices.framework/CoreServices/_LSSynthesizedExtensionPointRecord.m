@interface _LSSynthesizedExtensionPointRecord
- (_LSSynthesizedExtensionPointRecord)initWithCoder:(id)a3;
- (_LSSynthesizedExtensionPointRecord)initWithIdentifier:(id)a3;
- (id)_initWithContext:(LSContext *)a3 persistentIdentifierData:(const LSPersistentIdentifierData *)a4 length:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSSynthesizedExtensionPointRecord

- (_LSSynthesizedExtensionPointRecord)initWithIdentifier:(id)a3
{
  v4 = self;
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&CurrentContext, v5, 0);

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = *([(_LSDatabase *)*v6 schema]+ 1592);
  v13.receiver = v4;
  v13.super_class = _LSSynthesizedExtensionPointRecord;
  v6 = [(LSRecord *)&v13 _initWithContext:v6 tableID:v7 unitID:0];
  if (v6)
  {
    v8 = [a3 copy];
    v4 = v6[4];
    v6[4] = v8;
LABEL_4:
  }

  v9 = v6;
  if (CurrentContext && v16 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v10 = v15;
  CurrentContext = 0;
  v15 = 0;

  v16 = 0;
  v11 = v17;
  v17 = 0;

  return v9;
}

- (id)_initWithContext:(LSContext *)a3 persistentIdentifierData:(const LSPersistentIdentifierData *)a4 length:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = _LSSynthesizedExtensionPointRecord;
  v7 = [LSRecord _initWithContext:sel__initWithContext_persistentIdentifierData_length_ persistentIdentifierData:a3 length:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a4->var5 length:a5 - 28 encoding:4 freeWhenDone:0];
    if (v8)
    {
      objc_storeStrong(v7 + 4, v8);
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _LSSynthesizedExtensionPointRecord;
  [(LSRecord *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
}

- (_LSSynthesizedExtensionPointRecord)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _LSSynthesizedExtensionPointRecord;
  v4 = [(LSRecord *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v4->_identifier;
    v4->_identifier = v5;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _LSSynthesizedExtensionPointRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_identifier);
  }

  return v5;
}

@end