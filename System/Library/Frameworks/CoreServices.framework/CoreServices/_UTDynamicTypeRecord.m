@interface _UTDynamicTypeRecord
+ (id)_propertyClasses;
- (BOOL)conformsToTypeIdentifier:(id)a3;
- (BOOL)isChildOfTypeIdentifier:(id)a3;
- (_UTDynamicTypeRecord)initWithCoder:(id)a3;
- (id)_initWithContext:(LSContext *)a3 dynamicUTI:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)declaration;
- (id)parentTypeIdentifiers;
- (id)pedigreeWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)preferredTagOfClass:(id)a3;
- (id)tagSpecification;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UTDynamicTypeRecord

- (id)tagSpecification
{
  TagSpecification = _UTDynamicGetTagSpecification(self->_identifier);
  if (TagSpecification)
  {
    [_LSLazyPropertyList lazyPropertyListWithPropertyList:?];
  }

  else
  {
    _LSLazyPropertyListGetSharedEmptyPropertyList();
  }
  v3 = ;

  return v3;
}

- (id)_initWithContext:(LSContext *)a3 dynamicUTI:(id)a4
{
  v7 = *([(_LSDatabase *)a3->db schema]+ 16);
  v12.receiver = self;
  v12.super_class = _UTDynamicTypeRecord;
  v8 = [(LSRecord *)&v12 _initWithContext:a3 tableID:v7 unitID:0];
  if (v8)
  {
    v9 = [a4 copy];
    v10 = v8[4];
    v8[4] = v9;
  }

  return v8;
}

- (id)declaration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"UTTypeIdentifier"];
  TagSpecification = _UTDynamicGetTagSpecification(self->_identifier);
  [v3 setObject:TagSpecification forKeyedSubscript:@"UTTypeTagSpecification"];

  ParentIdentifiers = _UTDynamicGetParentIdentifiers(self->_identifier);
  [v3 setObject:ParentIdentifiers forKeyedSubscript:@"UTTypeConformsTo"];

  v6 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v3];

  return v6;
}

- (id)preferredTagOfClass:(id)a3
{
  FirstTag = _UTDynamicGetFirstTag(self->_identifier, a3);

  return FirstTag;
}

- (BOOL)conformsToTypeIdentifier:(id)a3
{
  v4 = a3;
  if ([(_UTDynamicTypeRecord *)self isChildOfTypeIdentifier:v4])
  {
    v5 = 1;
    v6 = v4;
  }

  else
  {
    v6 = [v4 lowercaseString];

    v7 = [(_UTDynamicTypeRecord *)self pedigree];
    v8 = v7;
    if (v7)
    {
      v5 = [v7 containsObject:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)pedigreeWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  Pedigree = _UTDynamicGetPedigree(a3, self->_identifier);
  v7 = Pedigree;
  if (Pedigree)
  {
    v8 = Pedigree;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = v8;

  return v9;
}

- (id)parentTypeIdentifiers
{
  ParentIdentifiers = _UTDynamicGetParentIdentifiers(self->_identifier);
  if (ParentIdentifiers)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:ParentIdentifiers];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  v4 = v3;

  return v4;
}

- (BOOL)isChildOfTypeIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  identifier = self->_identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___UTDynamicTypeRecord_isChildOfTypeIdentifier___block_invoke;
  v6[3] = &unk_1E6A1F208;
  v6[4] = a3;
  v6[5] = &v7;
  _UTDynamicEnumerateParentIdentifiers(identifier, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (id)_propertyClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UTDynamicTypeRecord;
  [(LSRecord *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
}

- (_UTDynamicTypeRecord)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UTDynamicTypeRecord;
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
  v7.super_class = _UTDynamicTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_identifier);
  }

  return v5;
}

@end