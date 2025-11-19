@interface THiOSDocument
- (CGSize)previewImageSize;
- (THiOSDocument)initWithBookDescription:(id)a3;
- (id)name;
- (void)dealloc;
@end

@implementation THiOSDocument

- (THiOSDocument)initWithBookDescription:(id)a3
{
  v5 = objc_alloc_init(TSUTemporaryDirectory);
  v9.receiver = self;
  v9.super_class = THiOSDocument;
  v6 = -[THiOSDocument initWithTemporaryFileURL:](&v9, "initWithTemporaryFileURL:", +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [objc_msgSend(v5 "path")]));
  v7 = v6;
  if (v6)
  {
    [(THiOSDocument *)v6 setTempDirectory:v5];
    [-[THiOSDocument documentRoot](v7 "documentRoot")];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THiOSDocument;
  [(THiOSDocument *)&v3 dealloc];
}

- (id)name
{
  v2 = [-[THiOSDocument documentRoot](self "documentRoot")];

  return [v2 bookTitle];
}

- (CGSize)previewImageSize
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

@end