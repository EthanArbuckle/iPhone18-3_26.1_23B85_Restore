@interface ADCloudKitCapabilitiesRecordBuilder
- (id)build;
- (void)setValue:(id)value forColumnName:(id)name;
@end

@implementation ADCloudKitCapabilitiesRecordBuilder

- (id)build
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (void)setValue:(id)value forColumnName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_dictionary;
    self->_dictionary = v8;

    dictionary = self->_dictionary;
  }

  [(NSMutableDictionary *)dictionary setObject:valueCopy forKey:nameCopy];
}

@end