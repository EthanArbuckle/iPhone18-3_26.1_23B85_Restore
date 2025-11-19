@interface INCodableIntegerAttributeMetadata
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableIntegerAttributeMetadata

- (void)updateWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = INCodableIntegerAttributeMetadata;
  [(INCodableNumberAttributeMetadata *)&v4 updateWithDictionary:a3];
  if ([(INCodableNumberAttributeMetadata *)self type]== 2)
  {
    [(INCodableNumberAttributeMetadata *)self setType:1];
  }
}

@end