@interface EpisodeAvailableStyle
+ (id)defaultStyle;
- (id)_initDefault;
- (id)newArtworkView;
@end

@implementation EpisodeAvailableStyle

+ (id)defaultStyle
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A880;
  block[3] = &unk_10002CB38;
  block[4] = self;
  if (qword_1000367B8 != -1)
  {
    dispatch_once(&qword_1000367B8, block);
  }

  v2 = qword_1000367C0;

  return v2;
}

- (id)_initDefault
{
  v23.receiver = self;
  v23.super_class = EpisodeAvailableStyle;
  v2 = [(EpisodeAvailableStyle *)&v23 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_10001DAA0;
    v4 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleBody textStyle:20.0];
    v5 = v3[3];
    v3[3] = v4;

    v6 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleTitle1 textStyle:24.0];
    v7 = v3[4];
    v3[4] = v6;

    v8 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleBody textStyle:24.0];
    v9 = v3[5];
    v3[5] = v8;

    v10 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleSubheadline textStyle:24.0];
    v11 = v3[6];
    v3[6] = v10;

    v12 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleBody textStyle:24.0];
    v13 = v3[7];
    v3[7] = v12;

    v14 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleBody textStyle:24.0];
    v15 = v3[8];
    v3[8] = v14;

    v16 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleSubheadline textStyle:32.0];
    v17 = v3[9];
    v3[9] = v16;

    v18 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleSubheadline textStyle:24.0];
    v19 = v3[10];
    v3[10] = v18;

    v20 = [[MTDynamicTypeConstant alloc] initWithDefaultConstant:UIFontTextStyleSubheadline textStyle:24.0];
    v21 = v3[11];
    v3[11] = v20;
  }

  return v3;
}

- (id)newArtworkView
{
  v2 = objc_opt_new();
  [v2 mt_configureForDisplayingArtworkWithRadius:4.0];
  return v2;
}

@end