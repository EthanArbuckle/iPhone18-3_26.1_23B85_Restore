@interface SubtitleCellWithAdditionalIcon
- (BOOL)leftFrame:(CGRect)a3 overlapsRightFrame:(CGRect)a4 difference:(double *)a5;
- (UIImageView)icon;
- (void)layoutSubviews;
@end

@implementation SubtitleCellWithAdditionalIcon

- (UIImageView)icon
{
  icon = self->_icon;
  if (!icon)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_icon;
    self->_icon = v4;

    v6 = [(SubtitleCellWithAdditionalIcon *)self contentView];
    [v6 addSubview:self->_icon];

    icon = self->_icon;
  }

  return icon;
}

- (void)layoutSubviews
{
  v80.receiver = self;
  v80.super_class = SubtitleCellWithAdditionalIcon;
  [(EKUITableViewCell *)&v80 layoutSubviews];
  v3 = [(SubtitleCellWithAdditionalIcon *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_icon)
  {
    v12 = [(SubtitleCellWithAdditionalIcon *)self textLabel];
    [v12 sizeToFit];

    v13 = [(SubtitleCellWithAdditionalIcon *)self detailTextLabel];
    [v13 sizeToFit];

    [(UIImageView *)self->_icon sizeToFit];
    v14 = [(SubtitleCellWithAdditionalIcon *)self textLabel];
    [v14 frame];
    v71 = v16;
    v73 = v15;
    v69 = v17;
    v76 = v18;

    v19 = [(SubtitleCellWithAdditionalIcon *)self detailTextLabel];
    [v19 frame];
    v75 = v20;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = [(SubtitleCellWithAdditionalIcon *)self traitCollection];
    v28 = EKUIUsesLargeTextLayout(v27);

    icon = self->_icon;
    if (v28)
    {
      [(UIImageView *)icon removeFromSuperview];
    }

    else
    {
      v67 = v24;
      v68 = v22;
      [(UIImageView *)icon frame];
      v31 = v30;
      v33 = v32;
      v34 = 6.0;
      if (CalInterfaceIsLeftToRight())
      {
        v81.origin.x = v5;
        v81.origin.y = v7;
        v81.size.width = v9;
        v81.size.height = v11;
        v34 = CGRectGetMaxX(v81) + -6.0 - v31;
      }

      v82.origin.x = v5;
      v82.origin.y = v7;
      v82.size.width = v9;
      v82.size.height = v11;
      v35 = round((CGRectGetMaxY(v82) - v33) * 0.5);
      [(UIImageView *)self->_icon setFrame:v34, v35, v31, v33];
      v36 = [(SubtitleCellWithAdditionalIcon *)self contentView];
      [v36 addSubview:self->_icon];

      IsLeftToRight = CalInterfaceIsLeftToRight();
      v38 = v73;
      if (IsLeftToRight)
      {
        v39 = v73;
      }

      else
      {
        v39 = v34;
      }

      if (IsLeftToRight)
      {
        v40 = v69;
      }

      else
      {
        v40 = v35;
      }

      v65 = v40;
      v66 = v39;
      if (IsLeftToRight)
      {
        v41 = v71;
      }

      else
      {
        v41 = v31;
      }

      if (IsLeftToRight)
      {
        v42 = v76;
      }

      else
      {
        v42 = v33;
      }

      v63 = v42;
      v64 = v41;
      v43 = CalInterfaceIsLeftToRight();
      if (v43)
      {
        v44 = v35;
      }

      else
      {
        v44 = v69;
      }

      if (v43)
      {
        v45 = v34;
      }

      else
      {
        v45 = v73;
      }

      if (v43)
      {
        v46 = v31;
      }

      else
      {
        v46 = v71;
      }

      if (v43)
      {
        v47 = v33;
      }

      else
      {
        v47 = v76;
      }

      v79 = 0.0;
      if ([(SubtitleCellWithAdditionalIcon *)self leftFrame:&v79 overlapsRightFrame:v66 difference:v65, v64, v63, v45, v44, v46, v47])
      {
        v48 = v71 - v79;
        if (!CalInterfaceIsLeftToRight())
        {
          v38 = v73 + v79;
        }

        v49 = [(SubtitleCellWithAdditionalIcon *)self textLabel];
        [v49 setFrame:{v38, v69, v48, v76}];
      }

      v50 = CalInterfaceIsLeftToRight();
      if (v50)
      {
        v51 = v75;
      }

      else
      {
        v51 = v34;
      }

      v77 = v51;
      if (v50)
      {
        v52 = v68;
      }

      else
      {
        v52 = v35;
      }

      if (v50)
      {
        v53 = v67;
      }

      else
      {
        v53 = v31;
      }

      v72 = v53;
      v74 = v52;
      if (v50)
      {
        v54 = v26;
      }

      else
      {
        v54 = v33;
      }

      v70 = v54;
      v55 = CalInterfaceIsLeftToRight();
      if (v55)
      {
        v56 = v34;
      }

      else
      {
        v56 = v75;
      }

      if (v55)
      {
        v57 = v35;
      }

      else
      {
        v57 = v68;
      }

      if (v55)
      {
        v58 = v31;
      }

      else
      {
        v58 = v67;
      }

      if (v55)
      {
        v59 = v33;
      }

      else
      {
        v59 = v26;
      }

      v78 = 0.0;
      if ([(SubtitleCellWithAdditionalIcon *)self leftFrame:&v78 overlapsRightFrame:v77 difference:v74, v72, v70, v56, v57, v58, v59])
      {
        v60 = v67 - v78;
        if (CalInterfaceIsLeftToRight())
        {
          v61 = v75;
        }

        else
        {
          v61 = v75 + v78;
        }

        v62 = [(SubtitleCellWithAdditionalIcon *)self detailTextLabel];
        [v62 setFrame:{v61, v68, v60, v26}];
      }
    }
  }
}

- (BOOL)leftFrame:(CGRect)a3 overlapsRightFrame:(CGRect)a4 difference:(double *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MaxX = CGRectGetMaxX(a3);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v11 = MaxX - (CGRectGetMinX(v13) + -5.0);
  *a5 = v11;
  return v11 > 0.0;
}

@end