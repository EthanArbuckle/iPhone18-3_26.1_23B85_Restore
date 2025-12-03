@interface BKLibrarySpotlightHelpers
+ (id)spotlightQueryStringForSearchString:(id)string attributes:(id)attributes;
+ (id)stringByEscapingSearchString:(id)string;
@end

@implementation BKLibrarySpotlightHelpers

+ (id)stringByEscapingSearchString:(id)string
{
  v3 = [string mutableCopy];
  [v3 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (id)spotlightQueryStringForSearchString:(id)string attributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  v8 = [self stringByEscapingSearchString:stringCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_47790;
  v22 = sub_477A0;
  v23 = objc_alloc_init(NSMutableArray);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_477A8;
  v15 = &unk_D6B18;
  v9 = v8;
  v16 = v9;
  v17 = &v18;
  [attributesCopy enumerateObjectsUsingBlock:&v12];
  v10 = [v19[5] componentsJoinedByString:{@" || ", v12, v13, v14, v15}];

  _Block_object_dispose(&v18, 8);

  return v10;
}

@end