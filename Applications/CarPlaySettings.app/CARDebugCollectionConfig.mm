@interface CARDebugCollectionConfig
- (CARDebugCollectionConfig)init;
- (CGSize)intrinsictContentSize;
- (CGSize)systemLayoutSize;
- (UIEdgeInsets)sectionInset;
@end

@implementation CARDebugCollectionConfig

- (CARDebugCollectionConfig)init
{
  v92.receiver = self;
  v92.super_class = CARDebugCollectionConfig;
  v2 = [(CARDebugCollectionConfig *)&v92 init];
  if (v2)
  {
    v3 = [NSNumber numberWithInteger:200];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v4 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_CellCount", @"com.apple.CarPlaySettings");
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;

    integerValue = [v7 integerValue];
    v2->_cells = integerValue;
    v9 = [NSNumber numberWithInteger:10];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v10 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_Columns", @"com.apple.CarPlaySettings");
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;

    integerValue2 = [v13 integerValue];
    v2->_columns = integerValue2;
    v15 = [NSNumber numberWithInteger:4];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v16 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_Rows", @"com.apple.CarPlaySettings");
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;

    integerValue3 = [v19 integerValue];
    v2->_rows = integerValue3;
    v21 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v22 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_SectionInsetTop", @"com.apple.CarPlaySettings");
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    v25 = v24;

    [v25 doubleValue];
    v27 = v26;

    v28 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v29 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_SectionInsetLeft", @"com.apple.CarPlaySettings");
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v32 = v31;

    [v32 doubleValue];
    v34 = v33;

    v35 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v36 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_SectionInsetBottom", @"com.apple.CarPlaySettings");
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = v35;
    }

    v39 = v38;

    [v39 doubleValue];
    v41 = v40;

    v42 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v43 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_SectionInsetRight", @"com.apple.CarPlaySettings");
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v42;
    }

    v46 = v45;

    [v46 doubleValue];
    v48 = v47;

    v2->_sectionInset.top = v27;
    v2->_sectionInset.left = v34;
    v2->_sectionInset.bottom = v41;
    v2->_sectionInset.right = v48;
    v49 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v50 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_MinimumLineSpacing", @"com.apple.CarPlaySettings");
    v51 = v50;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = v49;
    }

    v53 = v52;

    [v53 doubleValue];
    v55 = v54;

    v2->_minimumLineSpacing = v55;
    v56 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v57 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_MinimumInteritemSpacing", @"com.apple.CarPlaySettings");
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = v56;
    }

    v60 = v59;

    [v60 doubleValue];
    v62 = v61;

    v2->_minimumInteritemSpacing = v62;
    v63 = [NSNumber numberWithDouble:UIViewNoIntrinsicMetric];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v64 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_IntrinsicWidth", @"com.apple.CarPlaySettings");
    v65 = v64;
    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = v63;
    }

    v67 = v66;

    [v67 doubleValue];
    v69 = v68;

    v70 = [NSNumber numberWithDouble:UIViewNoIntrinsicMetric];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v71 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_IntrinsicHeight", @"com.apple.CarPlaySettings");
    v72 = v71;
    if (v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = v70;
    }

    v74 = v73;

    [v74 doubleValue];
    v76 = v75;

    v2->_intrinsictContentSize.width = v69;
    v2->_intrinsictContentSize.height = v76;
    v77 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v78 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_SystemWidth", @"com.apple.CarPlaySettings");
    v79 = v78;
    if (v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = v77;
    }

    v81 = v80;

    [v81 doubleValue];
    v83 = v82;

    v84 = [NSNumber numberWithDouble:0.0];
    CFPreferencesAppSynchronize(@"com.apple.CarPlaySettings");
    v85 = CFPreferencesCopyAppValue(@"DebugCollectionPanel_SystemHeight", @"com.apple.CarPlaySettings");
    v86 = v85;
    if (v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = v84;
    }

    v88 = v87;

    [v88 doubleValue];
    v90 = v89;

    v2->_systemLayoutSize.width = v83;
    v2->_systemLayoutSize.height = v90;
  }

  return v2;
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)intrinsictContentSize
{
  width = self->_intrinsictContentSize.width;
  height = self->_intrinsictContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)systemLayoutSize
{
  width = self->_systemLayoutSize.width;
  height = self->_systemLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end