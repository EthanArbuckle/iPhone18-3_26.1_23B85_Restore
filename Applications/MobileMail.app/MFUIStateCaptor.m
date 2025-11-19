@interface MFUIStateCaptor
+ (id)sharedCaptor;
- (MFUIStateCaptor)init;
- (id)_captureUIStateWithTitle:(id)a3 captureBlock:(id)a4;
- (id)mailSceneHierarchy:(id)a3;
- (id)redactedStringForString:(id)a3;
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

- (id)mailSceneHierarchy:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  v6 = [v5 persistentIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10022ED68;
  v10[3] = &unk_1006560F8;
  v7 = v4;
  v11 = v7;
  v8 = [(MFUIStateCaptor *)self _captureUIStateWithTitle:v6 captureBlock:v10];

  return v8;
}

- (id)redactedStringForString:(id)a3
{
  v4 = a3;
  if ([(MFUIStateCaptor *)self isCapturingUIState])
  {
    v5 = [v4 mf_fancyRedactedString];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)_captureUIStateWithTitle:(id)a3 captureBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFUIStateCaptor *)self setIsCapturingUIState:1];
  v8 = [NSString stringWithFormat:@"\n- Begin %@ --------------------------------------------------\n", v6];
  v9 = [NSString stringWithFormat:@"\n- End %@ --------------------------------------------------\n", v6];
  v10 = v7[2](v7);
  [(MFUIStateCaptor *)self setIsCapturingUIState:0];
  v11 = [NSString stringWithFormat:@"%@%@%@", v8, v10, v9];

  return v11;
}

@end