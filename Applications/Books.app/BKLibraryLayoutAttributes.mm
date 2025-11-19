@interface BKLibraryLayoutAttributes
+ (void)initialize;
+ (void)setGlobalLayoutDebugMode:(int)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation BKLibraryLayoutAttributes

+ (void)initialize
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___BKLibraryLayoutAttributes;
  objc_msgSendSuper2(&v6, "initialize");
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"BKLibraryBookshelfLayoutDebugEnabledUserDefaultsKey"];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    dword_100AF7420 = v5;
  }
}

+ (void)setGlobalLayoutDebugMode:(int)a3
{
  dword_100AF7420 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:dword_100AF7420 == 2 forKey:@"BKLibraryBookshelfLayoutDebugEnabledUserDefaultsKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = BKLibraryLayoutAttributes;
  v4 = [(BKLibraryLayoutAttributes *)&v8 copyWithZone:a3];
  objc_storeStrong(v4 + 2, self->_foregroundColor);
  v5 = [(NSDictionary *)self->_fontAttrs copy];
  v6 = v4[3];
  v4[3] = v5;

  *(v4 + 8) = self->_editable;
  objc_storeStrong(v4 + 5, self->_cellMetrics);
  objc_storeStrong(v4 + 4, self->_columnMetrics);
  objc_storeStrong(v4 + 6, self->_mainHeaderMetrics);
  *(v4 + 9) = self->_rtlLayout;
  *(v4 + 10) = self->_compactLayout;
  *(v4 + 11) = self->_verticalStackedLayout;
  *(v4 + 12) = self->_editMode;
  *(v4 + 13) = self->_firstItem;
  *(v4 + 14) = self->_lastItem;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v49.receiver = self;
  v49.super_class = BKLibraryLayoutAttributes;
  if ([(BKLibraryLayoutAttributes *)&v49 isEqual:?])
  {
    v7 = [(BKLibraryLayoutAttributes *)self foregroundColor];
    v8 = [a3 foregroundColor];
    if (v7 != v8)
    {
      v9 = [(BKLibraryLayoutAttributes *)self foregroundColor];
      v3 = [a3 foregroundColor];
      v48 = v9;
      if (![v9 isEqual:v3])
      {
        LOBYTE(v10) = 0;
        goto LABEL_39;
      }
    }

    v11 = [(BKLibraryLayoutAttributes *)self fontAttrs];
    v12 = [a3 fontAttrs];
    if (v11 != v12)
    {
      v13 = [(BKLibraryLayoutAttributes *)self fontAttrs];
      v4 = [a3 fontAttrs];
      if (![v13 isEqual:v4])
      {
        LOBYTE(v10) = 0;
        goto LABEL_37;
      }

      v47 = v13;
    }

    v14 = [(BKLibraryLayoutAttributes *)self editable];
    if (v14 != [a3 editable])
    {
      LOBYTE(v10) = 0;
      v13 = v47;
      if (v11 == v12)
      {
LABEL_38:

        if (v7 == v8)
        {
LABEL_40:

          return v10;
        }

LABEL_39:

        goto LABEL_40;
      }

LABEL_37:

      goto LABEL_38;
    }

    v15 = [(BKLibraryLayoutAttributes *)self cellMetrics];
    v45 = [a3 cellMetrics];
    v46 = v15;
    v16 = v15 == v45;
    v13 = v47;
    v44 = v4;
    if (!v16)
    {
      v17 = [(BKLibraryLayoutAttributes *)self cellMetrics];
      v40 = [a3 cellMetrics];
      v41 = v17;
      if (![v17 isEqual:?])
      {
        LOBYTE(v10) = 0;
        v23 = v45;
        v20 = v46;
LABEL_35:

LABEL_36:
        v4 = v44;
        if (v11 == v12)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v18 = [(BKLibraryLayoutAttributes *)self columnMetrics];
    v42 = [a3 columnMetrics];
    v43 = v18;
    if (v18 != v42)
    {
      v19 = [(BKLibraryLayoutAttributes *)self columnMetrics];
      v37 = [a3 columnMetrics];
      v38 = v19;
      if (![v19 isEqual:?])
      {
        LOBYTE(v10) = 0;
        v20 = v46;
        v22 = v42;
        v21 = v43;
LABEL_33:

LABEL_34:
        v23 = v45;
        if (v20 == v45)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v24 = [(BKLibraryLayoutAttributes *)self mainHeaderMetrics];
    v39 = [a3 mainHeaderMetrics];
    if (v24 == v39 || (-[BKLibraryLayoutAttributes mainHeaderMetrics](self, "mainHeaderMetrics"), v25 = objc_claimAutoreleasedReturnValue(), [a3 mainHeaderMetrics], v35 = objc_claimAutoreleasedReturnValue(), v36 = v25, objc_msgSend(v25, "isEqual:")))
    {
      v27 = [(BKLibraryLayoutAttributes *)self rtlLayout];
      if (v27 == [a3 rtlLayout] && (v28 = -[BKLibraryLayoutAttributes compactLayout](self, "compactLayout"), v28 == objc_msgSend(a3, "compactLayout")) && (v29 = -[BKLibraryLayoutAttributes verticalStackedLayout](self, "verticalStackedLayout"), v29 == objc_msgSend(a3, "verticalStackedLayout")) && (v30 = -[BKLibraryLayoutAttributes editMode](self, "editMode"), v30 == objc_msgSend(a3, "editMode")) && (v31 = -[BKLibraryLayoutAttributes firstItem](self, "firstItem"), v31 == objc_msgSend(a3, "firstItem")))
      {
        v34 = [(BKLibraryLayoutAttributes *)self lastItem];
        v10 = v34 ^ [a3 lastItem] ^ 1;
        v32 = v10;
      }

      else
      {
        LOBYTE(v10) = 0;
        v32 = 0;
      }

      v26 = v39;
      if (v24 == v39)
      {

        LOBYTE(v10) = v32;
LABEL_32:
        v22 = v42;
        v21 = v43;
        v20 = v46;
        v13 = v47;
        if (v43 == v42)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      v26 = v39;
    }

    goto LABEL_32;
  }

  LOBYTE(v10) = 0;
  return v10;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = BKLibraryLayoutAttributes;
  v3 = [(BKLibraryLayoutAttributes *)&v6 description];
  v4 = [NSMutableString stringWithFormat:@"%@ ", v3];

  if (self->_cellMetrics)
  {
    [v4 appendFormat:@"cellMetrics: (%@); ", self->_cellMetrics];
  }

  return v4;
}

@end