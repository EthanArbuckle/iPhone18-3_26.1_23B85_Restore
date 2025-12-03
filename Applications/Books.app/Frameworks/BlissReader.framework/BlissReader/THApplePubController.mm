@interface THApplePubController
+ (BOOL)readAppPubFileToDocumentRoot:(id)root url:(id)url error:(id *)error;
@end

@implementation THApplePubController

+ (BOOL)readAppPubFileToDocumentRoot:(id)root url:(id)url error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [root setZipPackage:url];

  return [root readStructureFromURL:url error:error];
}

@end