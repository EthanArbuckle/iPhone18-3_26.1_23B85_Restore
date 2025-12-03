@interface NTKKaleidoscopeRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (id)editOptionSectionControllerForContext:(id)context;
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

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (id)editOptionSectionControllerForContext:(id)context
{
  contextCopy = context;
  faceView = [contextCopy faceView];
  tableViewProvider = [contextCopy tableViewProvider];
  collection = [contextCopy collection];
  inGallery = [contextCopy inGallery];
  externalAssets = [contextCopy externalAssets];
  requestingViewController = [contextCopy requestingViewController];

  mode = [collection mode];
  if (![NTKCFaceDetailKaleidoscopeContentSectionController hasSectionForFace:self forEditMode:mode])
  {
    if ([NTKCFaceDetailKaleidoscopeStyleSectionController hasSectionForFace:self forEditMode:mode])
    {
      v12 = [[NTKCFaceDetailKaleidoscopeStyleSectionController alloc] initWithTableViewController:tableViewProvider face:self inGallery:inGallery editOptionCollection:collection faceView:faceView];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([NTKCFaceDetailKaleidoscopeContentSectionController supressesSectionForExternalAssets:externalAssets])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [[NTKCFaceDetailKaleidoscopeContentSectionController alloc] initWithTableViewController:tableViewProvider face:self inGallery:inGallery editOptionCollection:collection faceView:faceView];
  [(NTKCFaceDetailKaleidoscopeStyleSectionController *)v12 setParentViewController:requestingViewController];
  if (externalAssets)
  {
    firstObject = [externalAssets firstObject];
    [(NTKCFaceDetailKaleidoscopeStyleSectionController *)v12 setExternalAsset:firstObject];
  }

LABEL_8:

  return v12;
}

@end