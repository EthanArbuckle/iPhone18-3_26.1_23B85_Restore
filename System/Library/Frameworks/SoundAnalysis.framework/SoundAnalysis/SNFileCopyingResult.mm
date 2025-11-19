@interface SNFileCopyingResult
- (NSString)filename;
- (NSURL)itemURL;
@end

@implementation SNFileCopyingResult

- (NSString)filename
{
  sub_1C9A46D74();
  v2 = sub_1C9A92478();

  return v2;
}

- (NSURL)itemURL
{
  v2 = sub_1C9A91558();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A46ECC(v5);
  v6 = sub_1C9A91488();
  (*(v3 + 8))(v5, v2);

  return v6;
}

@end