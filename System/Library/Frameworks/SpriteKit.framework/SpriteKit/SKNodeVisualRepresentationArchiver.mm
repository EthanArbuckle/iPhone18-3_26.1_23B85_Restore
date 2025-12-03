@interface SKNodeVisualRepresentationArchiver
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation SKNodeVisualRepresentationArchiver

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (([keyCopy isEqualToString:@"_children"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"_keyedSubSprites") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"_actions") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"_keyedActions") & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SKNodeVisualRepresentationArchiver;
    [(SKNodeVisualRepresentationArchiver *)&v8 encodeObject:objectCopy forKey:keyCopy];
  }
}

@end