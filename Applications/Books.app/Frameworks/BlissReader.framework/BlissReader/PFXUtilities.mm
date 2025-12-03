@interface PFXUtilities
+ (BOOL)elementDenotesList:(const char *)list;
+ (BOOL)elementDenotesListItem:(const char *)item;
+ (BOOL)elementHasTextAlign:(const char *)align;
+ (BOOL)elementIsTableRelated:(const char *)related;
+ (BOOL)hasEntry:(id)entry inArchive:(id)archive;
+ (id)createPIRegularExpressionForAttribute:(id)attribute searchOptions:(unint64_t)options;
+ (id)valueForRegExpression:(id)expression inProcessingInstruction:(id)instruction searchOptions:(unint64_t)options attributeName:(id)name;
+ (id)valueOfHrefAttributeInProcessingInstruction:(id)instruction;
+ (id)valueOfMediaAttributeInProcessingInstruction:(id)instruction;
+ (id)valueOfTypeAttributeInProcessingInstruction:(id)instruction;
@end

@implementation PFXUtilities

+ (BOOL)elementHasTextAlign:(const char *)align
{
  v3 = [PFXElementInfo elementInfoForElement:align];
  if (v3)
  {

    LOBYTE(v3) = [v3 hasTextAlign];
  }

  return v3;
}

+ (BOOL)elementIsTableRelated:(const char *)related
{
  v3 = [PFXElementInfo elementInfoForElement:related];
  if (v3)
  {

    LOBYTE(v3) = [v3 isTableRelated];
  }

  return v3;
}

+ (BOOL)elementDenotesList:(const char *)list
{
  v3 = [PFXElementInfo elementInfoForElement:list];
  if (v3)
  {

    LOBYTE(v3) = [v3 denotesList];
  }

  return v3;
}

+ (BOOL)elementDenotesListItem:(const char *)item
{
  v3 = [PFXElementInfo elementInfoForElement:item];
  if (v3)
  {

    LOBYTE(v3) = [v3 denotesListItem];
  }

  return v3;
}

+ (BOOL)hasEntry:(id)entry inArchive:(id)archive
{
  result = 0;
  if (entry)
  {
    if (archive)
    {
      return [archive entryWithName:?] != 0;
    }
  }

  return result;
}

+ (id)valueForRegExpression:(id)expression inProcessingInstruction:(id)instruction searchOptions:(unint64_t)options attributeName:(id)name
{
  v8 = [expression matchesInString:instruction options:options range:{0, objc_msgSend(instruction, "length")}];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (![v8 count])
  {
    return 0;
  }

  v10 = [objc_msgSend(v9 "lastObject")];
  v12 = [objc_msgSend(instruction substringWithRange:{v10, v11), "substringFromIndex:", objc_msgSend(name, "length") + 2}];
  v13 = [v12 length] - 1;

  return [v12 substringToIndex:v13];
}

+ (id)createPIRegularExpressionForAttribute:(id)attribute searchOptions:(unint64_t)options
{
  v6 = 0;
  v4 = [[NSRegularExpression alloc] initWithPattern:+[NSString stringWithFormat:](NSString options:"stringWithFormat:" error:{@"%@=['][A-Za-z0-9 .\\-/\\(\\):]+[']", attribute), options, &v6}];
  if (v6)
  {
  }

  return v4;
}

+ (id)valueOfHrefAttributeInProcessingInstruction:(id)instruction
{
  if (!qword_5679C0)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!qword_5679C0)
    {
      qword_5679C0 = [self createPIRegularExpressionForAttribute:@"href" searchOptions:0];
    }

    objc_sync_exit(v4);
  }

  return [self valueForRegExpression:? inProcessingInstruction:? searchOptions:? attributeName:?];
}

+ (id)valueOfMediaAttributeInProcessingInstruction:(id)instruction
{
  if (!qword_5679C8)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!qword_5679C8)
    {
      qword_5679C8 = [self createPIRegularExpressionForAttribute:@"media" searchOptions:0];
    }

    objc_sync_exit(v4);
  }

  return [self valueForRegExpression:? inProcessingInstruction:? searchOptions:? attributeName:?];
}

+ (id)valueOfTypeAttributeInProcessingInstruction:(id)instruction
{
  if (!qword_5679D0)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!qword_5679D0)
    {
      qword_5679D0 = [self createPIRegularExpressionForAttribute:@"type" searchOptions:0];
    }

    objc_sync_exit(v4);
  }

  return [self valueForRegExpression:? inProcessingInstruction:? searchOptions:? attributeName:?];
}

@end