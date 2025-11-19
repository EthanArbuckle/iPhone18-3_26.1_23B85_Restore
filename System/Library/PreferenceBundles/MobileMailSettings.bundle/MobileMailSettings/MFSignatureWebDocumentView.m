@interface MFSignatureWebDocumentView
+ (id)standardTextViewPreferences;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
@end

@implementation MFSignatureWebDocumentView

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("paste:" == a3)
  {
    v7 = +[UIPasteboard generalPasteboard];
    LODWORD(self) = [v7 hasImages] ^ 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFSignatureWebDocumentView;
    LOBYTE(self) = [(MFSignatureWebDocumentView *)&v9 canPerformAction:a3 withSender:v6];
  }

  return self;
}

+ (id)standardTextViewPreferences
{
  v2 = qword_44A30;
  if (!qword_44A30)
  {
    WebThreadLock();
    v3 = [[WebPreferences alloc] initWithIdentifier:@"com.apple.uikit.text"];
    v4 = qword_44A30;
    qword_44A30 = v3;

    [qword_44A30 setAutosaves:0];
    [qword_44A30 setJavaEnabled:0];
    [qword_44A30 setJavaScriptEnabled:0];
    [qword_44A30 setPlugInsEnabled:0];
    [qword_44A30 setDatabasesEnabled:0];
    [qword_44A30 setLocalStorageEnabled:0];
    [qword_44A30 setOfflineWebApplicationCacheEnabled:0];
    [qword_44A30 setDiskImageCacheEnabled:0];
    [qword_44A30 setAcceleratedDrawingEnabled:0];
    v2 = qword_44A30;
  }

  return v2;
}

@end