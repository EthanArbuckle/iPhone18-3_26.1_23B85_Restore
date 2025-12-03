@interface UGCMorePhotosFeedLayoutBuilder
+ (id)_loadingSection;
+ (id)_thumbnailGalleryLayoutForPadPortrait;
+ (id)_thumbnailGalleryLayoutForPhoneLandscape;
+ (id)_thumbnailGalleryLayoutForPhonePortrait;
+ (id)_thumbnailGalleryLayoutForTraitCollection:(id)collection;
+ (id)thumbnailGalleryLayoutForTraitCollection:(id)collection;
@end

@implementation UGCMorePhotosFeedLayoutBuilder

+ (id)_loadingSection
{
  v2 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 height:50.0];
  v3 = [NSCollectionLayoutItem itemWithLayoutSize:v2];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v2 subitems:v4];

  v6 = [NSCollectionLayoutSection sectionWithGroup:v5];

  return v6;
}

+ (id)_thumbnailGalleryLayoutForPhonePortrait
{
  v31 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.666666687 fractionalHeight:1.0];
  v2 = [NSCollectionLayoutItem itemWithLayoutSize:v31];
  [v2 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v30 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeight:0.5];
  v3 = [NSCollectionLayoutItem itemWithLayoutSize:v30];
  [v3 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v19 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.333333343 fractionalHeight:1.0];
  v22 = v3;
  v28 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v19 repeatingSubitem:v3 count:2];
  v29 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:1.0];
  v25 = [NSCollectionLayoutItem itemWithLayoutSize:v29];
  [v25 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v27 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.666666687];
  v35[0] = v28;
  v35[1] = v2;
  v24 = v2;
  v4 = [NSArray arrayWithObjects:v35 count:2];
  v21 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v27 subitems:v4];

  v26 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.333333343 fractionalHeight:1.0];
  v5 = [NSCollectionLayoutItem itemWithLayoutSize:v26];
  [v5 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v23 = [NSCollectionLayoutItem itemWithLayoutSize:v26];
  [v23 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v20 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.333333343];
  v34[0] = v5;
  v34[1] = v5;
  v34[2] = v23;
  v6 = [NSArray arrayWithObjects:v34 count:3];
  v18 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v20 subitems:v6];

  v17 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.666666687];
  v7 = [v2 copy];
  [v7 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v8 = [v3 copy];
  [v8 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v9 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v19 repeatingSubitem:v8 count:2];
  v33[0] = v7;
  v33[1] = v9;
  v10 = [NSArray arrayWithObjects:v33 count:2];
  v11 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v17 subitems:v10];

  v12 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:2.66666675];
  v32[0] = v25;
  v32[1] = v21;
  v32[2] = v18;
  v32[3] = v11;
  v13 = [NSArray arrayWithObjects:v32 count:4];
  v14 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v12 subitems:v13];

  v15 = [NSCollectionLayoutSection sectionWithGroup:v14];

  return v15;
}

+ (id)_thumbnailGalleryLayoutForPhoneLandscape
{
  v37 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.666666687 fractionalHeight:1.0];
  v2 = [NSCollectionLayoutItem itemWithLayoutSize:v37];
  [v2 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v36 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeight:0.5];
  v33 = [NSCollectionLayoutItem itemWithLayoutSize:v36];
  [v33 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v35 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.5 fractionalHeight:1.0];
  v3 = [NSCollectionLayoutItem itemWithLayoutSize:v35];
  [v3 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v34 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeight:0.5];
  v30 = v3;
  v4 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v34 repeatingSubitem:v3 count:2];
  v5 = [NSCollectionLayoutSpacing fixedSpacing:2.0];
  v32 = v4;
  [v4 setInterItemSpacing:v5];

  v31 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.333333343 fractionalHeight:1.0];
  v42[0] = v33;
  v42[1] = v4;
  v6 = [NSArray arrayWithObjects:v42 count:2];
  v7 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v31 subitems:v6];

  [v3 setContentInsets:{0.0, 0.0, 0.0, 2.0}];
  v8 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.333333343];
  v9 = v2;
  v28 = v2;
  v41[0] = v2;
  v41[1] = v7;
  v26 = v7;
  v10 = [NSArray arrayWithObjects:v41 count:2];
  v24 = v8;
  v27 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v8 subitems:v10];

  v29 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.166666672 fractionalHeight:1.0];
  v11 = [NSCollectionLayoutItem itemWithLayoutSize:v29];
  [v11 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v12 = [v11 copy];
  [v12 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v25 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.166666672];
  v40[0] = v11;
  v40[1] = v11;
  v40[2] = v11;
  v40[3] = v11;
  v40[4] = v11;
  v40[5] = v12;
  v13 = [NSArray arrayWithObjects:v40 count:6];
  v14 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v25 subitems:v13];

  v15 = [v9 copy];
  [v15 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v16 = [v7 copy];
  [v16 setContentInsets:{0.0, 0.0, 0.0, 2.0}];
  v39[0] = v16;
  v39[1] = v15;
  v17 = [NSArray arrayWithObjects:v39 count:2];
  v18 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v8 subitems:v17];

  v19 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:3.0];
  v38[0] = v27;
  v38[1] = v14;
  v38[2] = v18;
  v38[3] = v14;
  v20 = [NSArray arrayWithObjects:v38 count:4];
  v21 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v19 subitems:v20];

  v22 = [NSCollectionLayoutSection sectionWithGroup:v21];

  return v22;
}

+ (id)_thumbnailGalleryLayoutForPadPortrait
{
  v29 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.75 fractionalHeight:1.0];
  v2 = [NSCollectionLayoutItem itemWithLayoutSize:v29];
  [v2 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v30 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeight:0.333333343];
  v28 = [NSCollectionLayoutItem itemWithLayoutSize:v30];
  [v28 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v18 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.25 fractionalHeight:1.0];
  v26 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v18 repeatingSubitem:v28 count:3];
  v27 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:1.0];
  v23 = [NSCollectionLayoutItem itemWithLayoutSize:v27];
  [v23 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v25 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.75];
  v34[0] = v26;
  v34[1] = v2;
  v22 = v2;
  v3 = [NSArray arrayWithObjects:v34 count:2];
  v20 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v25 subitems:v3];

  v24 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:0.25 fractionalHeight:1.0];
  v4 = [NSCollectionLayoutItem itemWithLayoutSize:v24];
  [v4 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v21 = [NSCollectionLayoutItem itemWithLayoutSize:v24];
  [v21 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v19 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.25];
  v33[0] = v4;
  v33[1] = v4;
  v33[2] = v4;
  v33[3] = v21;
  v5 = [NSArray arrayWithObjects:v33 count:4];
  v17 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v19 subitems:v5];

  v16 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:0.75];
  v6 = [v2 copy];
  [v6 setContentInsets:{0.0, 0.0, 2.0, 2.0}];
  v7 = [NSCollectionLayoutItem itemWithLayoutSize:v30];
  [v7 setContentInsets:{0.0, 0.0, 2.0, 0.0}];
  v8 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v18 repeatingSubitem:v7 count:3];
  v32[0] = v6;
  v32[1] = v8;
  v9 = [NSArray arrayWithObjects:v32 count:2];
  v10 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v16 subitems:v9];

  v11 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:1.0 fractionalHeightUsingWidth:2.75];
  v31[0] = v23;
  v31[1] = v20;
  v31[2] = v17;
  v31[3] = v10;
  v12 = [NSArray arrayWithObjects:v31 count:4];
  v13 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v11 subitems:v12];

  v14 = [NSCollectionLayoutSection sectionWithGroup:v13];

  return v14;
}

+ (id)_thumbnailGalleryLayoutForTraitCollection:(id)collection
{
  collectionCopy = collection;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  v6 = +[UIDevice currentDevice];
  orientation = [v6 orientation];

  if (userInterfaceIdiom == 5)
  {
    _thumbnailGalleryLayoutForMacOS = [self _thumbnailGalleryLayoutForMacOS];
  }

  else if (userInterfaceIdiom == 1)
  {
    if ((orientation - 1) > 1)
    {
      [self _thumbnailGalleryLayoutForPadLandscape];
    }

    else
    {
      [self _thumbnailGalleryLayoutForPadPortrait];
    }
    _thumbnailGalleryLayoutForMacOS = ;
  }

  else if (userInterfaceIdiom || [collectionCopy verticalSizeClass] != 1)
  {
    _thumbnailGalleryLayoutForMacOS = [self _thumbnailGalleryLayoutForPhonePortrait];
  }

  else
  {
    _thumbnailGalleryLayoutForMacOS = [self _thumbnailGalleryLayoutForPhoneLandscape];
  }

  v9 = _thumbnailGalleryLayoutForMacOS;

  return v9;
}

+ (id)thumbnailGalleryLayoutForTraitCollection:(id)collection
{
  v4 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  [v4 setContentInsetsReference:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D324C8;
  v7[3] = &unk_101651B48;
  v7[4] = self;
  v5 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v7 configuration:v4];

  return v5;
}

@end