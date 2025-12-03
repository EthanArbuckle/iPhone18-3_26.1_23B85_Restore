@interface INCodableIntegerAttributeMetadata
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableIntegerAttributeMetadata

- (void)updateWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = INCodableIntegerAttributeMetadata;
  [(INCodableNumberAttributeMetadata *)&v4 updateWithDictionary:dictionary];
  if ([(INCodableNumberAttributeMetadata *)self type]== 2)
  {
    [(INCodableNumberAttributeMetadata *)self setType:1];
  }
}

@end