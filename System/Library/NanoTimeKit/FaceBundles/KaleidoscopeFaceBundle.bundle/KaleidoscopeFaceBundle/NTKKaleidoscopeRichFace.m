@interface NTKKaleidoscopeRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (id)editOptionSectionControllerForContext:(id)a3;
@end

@implementation NTKKaleidoscopeRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v12[0] = NTKComplicationSlotTopLeft;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[0] = v4;
  v12[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[1] = v6;
  v12[2] = NTKComplicationSlotBottomCenter;
  v7 = NTKAllUtilityLargeComplicationTypes();
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (id)editOptionSectionControllerForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 faceView];
  v6 = [v4 tableViewProvider];
  v7 = [v4 collection];
  v8 = [v4 inGallery];
  v9 = [v4 externalAssets];
  v10 = [v4 requestingViewController];

  v11 = [v7 mode];
  if (![NTKCFaceDetailKaleidoscopeContentSectionController hasSectionForFace:self forEditMode:v11])
  {
    if ([NTKCFaceDetailKaleidoscopeStyleSectionController hasSectionForFace:self forEditMode:v11])
    {
      v12 = [[NTKCFaceDetailKaleidoscopeStyleSectionController alloc] initWithTableViewController:v6 face:self inGallery:v8 editOptionCollection:v7 faceView:v5];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([NTKCFaceDetailKaleidoscopeContentSectionController supressesSectionForExternalAssets:v9])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [[NTKCFaceDetailKaleidoscopeContentSectionController alloc] initWithTableViewController:v6 face:self inGallery:v8 editOptionCollection:v7 faceView:v5];
  [(NTKCFaceDetailKaleidoscopeStyleSectionController *)v12 setParentViewController:v10];
  if (v9)
  {
    v13 = [v9 firstObject];
    [(NTKCFaceDetailKaleidoscopeStyleSectionController *)v12 setExternalAsset:v13];
  }

LABEL_8:

  return v12;
}

@end