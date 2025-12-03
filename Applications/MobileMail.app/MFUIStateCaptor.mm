@interface MFUIStateCaptor
+ (id)sharedCaptor;
- (MFUIStateCaptor)init;
- (id)_captureUIStateWithTitle:(id)title captureBlock:(id)block;
- (id)mailSceneHierarchy:(id)hierarchy;
- (id)redactedStringForString:(id)string;
@end

@implementation MFUIStateCaptor

+ (id)sharedCaptor
{
  if (qword_1006DD708 != -1)
  {
    sub_10048C514();
  }

  v3 = qword_1006DD700;

  return v3;
}

- (MFUIStateCaptor)init
{
  v6.receiver = self;
  v6.super_class = MFUIStateCaptor;
  v2 = [(MFUIStateCaptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    redactedFieldNames = v2->_redactedFieldNames;
    v2->_redactedFieldNames = &off_100674FE8;
  }

  return v3;
}

- (id)mailSceneHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  session = [hierarchyCopy session];
  persistentIdentifier = [session persistentIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10022ED68;
  v10[3] = &unk_1006560F8;
  v7 = hierarchyCopy;
  v11 = v7;
  v8 = [(MFUIStateCaptor *)self _captureUIStateWithTitle:persistentIdentifier captureBlock:v10];

  return v8;
}

- (id)redactedStringForString:(id)string
{
  stringCopy = string;
  if ([(MFUIStateCaptor *)self isCapturingUIState])
  {
    mf_fancyRedactedString = [stringCopy mf_fancyRedactedString];
  }

  else
  {
    mf_fancyRedactedString = stringCopy;
  }

  v6 = mf_fancyRedactedString;

  return v6;
}

- (id)_captureUIStateWithTitle:(id)title captureBlock:(id)block
{
  titleCopy = title;
  blockCopy = block;
  [(MFUIStateCaptor *)self setIsCapturingUIState:1];
  titleCopy = [NSString stringWithFormat:@"\n- Begin %@ --------------------------------------------------\n", titleCopy];
  titleCopy2 = [NSString stringWithFormat:@"\n- End %@ --------------------------------------------------\n", titleCopy];
  v10 = blockCopy[2](blockCopy);
  [(MFUIStateCaptor *)self setIsCapturingUIState:0];
  v11 = [NSString stringWithFormat:@"%@%@%@", titleCopy, v10, titleCopy2];

  return v11;
}

@end