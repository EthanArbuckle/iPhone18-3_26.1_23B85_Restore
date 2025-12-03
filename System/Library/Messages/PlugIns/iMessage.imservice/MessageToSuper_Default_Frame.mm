@interface MessageToSuper_Default_Frame
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation MessageToSuper_Default_Frame

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  v5.receiver = self;
  v5.super_class = MessageToSuper_Default_Frame;
  -[MessageToSuper_Default_Frame parser:context:foundCharacters:](&v5, "parser:context:foundCharacters:", parser, context, [characters stringByRemovingCharactersFromSet:{+[NSCharacterSet newlineCharacterSet](NSCharacterSet, "newlineCharacterSet")}]);
}

@end