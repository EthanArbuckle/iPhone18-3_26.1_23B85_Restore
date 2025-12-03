@interface TPSTipCellAppearance
- (void)updateAppearanceWithSize:(CGSize)size;
- (void)updateMediaSizeType;
@end

@implementation TPSTipCellAppearance

- (void)updateMediaSizeType
{
  [(TPSTipCellAppearance *)self size];
  if (v4 != CGSizeZero.width || v3 != CGSizeZero.height)
  {
    self->_useBookendsRegularTitleBaseline = 0;
    if (+[TPSAppearance isPhoneUI])
    {
      self->_displayType = 0;
      [(TPSTipCellAppearance *)self setMediaSizeType:1];
    }

    else
    {
      [(TPSTipCellAppearance *)self setMediaSizeType:1];
      self->_displayType = 2;
    }

    self->_bookendsMediaSizeType = 1;
  }
}

- (void)updateAppearanceWithSize:(CGSize)size
{
  width = size.width;
  v39.receiver = self;
  v39.super_class = TPSTipCellAppearance;
  [(TPSTipCellAppearance *)&v39 updateAppearanceWithSize:size.width, size.height];
  [(TPSTipCellAppearance *)self updateMediaSizeType];
  traitCollection = [(TPSTipCellAppearance *)self traitCollection];

  if (traitCollection)
  {
    v6 = +[TPSUIAppController sharedInstance];
    assetSizes = [v6 assetSizes];

    if (+[TPSAppearance isPhoneUI])
    {
      self->_outroTextLabelTopPadding = 26.0;
      v8 = +[TPSCommonDefines sharedInstance];
      assetRatioType = [v8 assetRatioType];

      if (assetRatioType)
      {
        self->_outroWidthMultiplier = 2.31466667;
        v10 = 1.28019324;
        v11 = 1.99466667;
      }

      else
      {
        v10 = 0.938666667;
        v11 = 1.608;
      }

      self->_bookendsHeightMultiplier = v11;
      v22 = [assetSizes tip];
      [(TPSTipCellAppearance *)self heightToWidthRatioFromSizes:v22 mediaSizeType:[(TPSTipCellAppearance *)self mediaSizeType] defaultValue:v10];
      v24 = v23;

      v25 = ceil(width * v24);
      v26 = 30.0;
      v27 = 30.0;
    }

    else
    {
      [(TPSTipCellAppearance *)self size];
      v13 = v12;
      [(TPSTipCellAppearance *)self size];
      v15 = v14;
      v16 = +[UIScreen mainScreen];
      [v16 bounds];
      v18 = v17;
      v20 = v19;

      if (v13 > v15 && v15 == v20)
      {
        v21 = 33.0;
      }

      else if (v18 <= v20)
      {
        v21 = 40.0;
      }

      else if (v13 / v18 <= 0.6)
      {
        v21 = 40.0;
      }

      else
      {
        v21 = 33.0;
      }

      v28 = v18 / width;
      v29 = +[TPSCommonDefines sharedInstance];
      v30 = [v29 assetRatioType] == 0;

      self->_outroTextLabelTopPadding = v21;
      isBookendsCompactLayout = [(TPSTipCellAppearance *)self isBookendsCompactLayout];
      v32 = &unk_1000777A0;
      if (isBookendsCompactLayout)
      {
        v32 = &unk_1000777B0;
      }

      self->_bookendsHeightMultiplier = v32[v30];
      if (v28 == 1.0)
      {
        v27 = 30.0;
      }

      else
      {
        self->_outroTextLabelTopPadding = ceil(self->_outroTextLabelTopPadding / v28);
        v27 = ceil(30.0 / v28);
      }

      v33 = round((v13 + -672.0) * 0.5);
      if (v13 <= 834.0)
      {
        v26 = 56.0;
      }

      else
      {
        v26 = v33;
      }

      v34 = v13 * 0.9644;
      if (v15 >= v13 * 0.9644 + 89.95)
      {
        v36 = -110.05;
      }

      else
      {
        [(TPSTipCellAppearance *)self topSafeAreaHeight];
        v34 = v15 - v35;
        v36 = -200.0;
      }

      v25 = round(v34 + v36);
    }

    self->_assetHeight = v25;
    tipIntro = [assetSizes tipIntro];
    [(TPSTipCellAppearance *)self heightToWidthRatioFromSizes:tipIntro mediaSizeType:self->_bookendsMediaSizeType defaultValue:self->_bookendsHeightMultiplier];
    self->_bookendsHeightMultiplier = v38;

    self->_contentSidePadding = v26;
    self->_bookendsContentSidePadding = v27;
  }
}

@end