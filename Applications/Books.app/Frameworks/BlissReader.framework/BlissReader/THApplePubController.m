@interface THApplePubController
+ (BOOL)readAppPubFileToDocumentRoot:(id)a3 url:(id)a4 error:(id *)a5;
@end

@implementation THApplePubController

+ (BOOL)readAppPubFileToDocumentRoot:(id)a3 url:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  [a3 setZipPackage:a4];

  return [a3 readStructureFromURL:a4 error:a5];
}

@end