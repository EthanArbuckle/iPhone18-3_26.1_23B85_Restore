@interface VNDisallowedList
+ (id)disallowedListFromUTF8StringArray:(const char *)array;
+ (id)sceneNetV3;
- (BOOL)isEqual:(id)equal;
- (NSSet)allIdentifiers;
- (VNDisallowedList)initWithIdentifiers:(id)identifiers;
@end

@implementation VNDisallowedList

+ (id)sceneNetV3
{
  if (sceneNetV3_onceToken != -1)
  {
    dispatch_once(&sceneNetV3_onceToken, &__block_literal_global_679);
  }

  v3 = sceneNetV3_ourPublicDisallowedList;

  return v3;
}

uint64_t __40__VNDisallowedList_SceneNet__sceneNetV3__block_invoke()
{
  sceneNetV3_ourPublicDisallowedList = [VNDisallowedList disallowedListFromUTF8StringArray:_block_invoke_disallowedList];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSet *)self->_identifiers isEqualToSet:equalCopy->_identifiers];
  }

  return v5;
}

- (NSSet)allIdentifiers
{
  v2 = [(NSSet *)self->_identifiers copy];

  return v2;
}

- (VNDisallowedList)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = VNDisallowedList;
  v5 = [(VNDisallowedList *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v6;
  }

  return v5;
}

+ (id)disallowedListFromUTF8StringArray:(const char *)array
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (array && *array)
  {
    v6 = array + 1;
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v6 - 1)];
      [v5 addObject:v7];
    }

    while (*v6++);
  }

  v9 = [[self alloc] initWithIdentifiers:v5];

  return v9;
}

@end