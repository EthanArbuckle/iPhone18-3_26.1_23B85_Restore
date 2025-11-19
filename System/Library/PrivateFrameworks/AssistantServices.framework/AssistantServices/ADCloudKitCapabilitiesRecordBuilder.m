@interface ADCloudKitCapabilitiesRecordBuilder
- (id)build;
- (void)setValue:(id)a3 forColumnName:(id)a4;
@end

@implementation ADCloudKitCapabilitiesRecordBuilder

- (id)build
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (void)setValue:(id)a3 forColumnName:(id)a4
{
  v10 = a3;
  v6 = a4;
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_dictionary;
    self->_dictionary = v8;

    dictionary = self->_dictionary;
  }

  [(NSMutableDictionary *)dictionary setObject:v10 forKey:v6];
}

@end