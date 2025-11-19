void sub_100000D68(void *a1)
{
  v2 = [[PKPassView alloc] initWithPass:a1[4] content:5];
  [v2 setSuppressedContent:512];
  [v2 layoutIfNeeded];
  [v2 sizeOfFront];
  v3 = a1[6];
  v4 = a1[7];
  PKSizeAspectFit();
  v6 = v5;
  v8 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100000E84;
  v11[3] = &unk_100004100;
  v12 = v2;
  v13 = v5;
  v14 = v7;
  v9 = v2;
  v10 = [QLThumbnailReply replyWithContextSize:v11 currentContextDrawingBlock:v6, v8];
  (*(a1[5] + 16))();
}