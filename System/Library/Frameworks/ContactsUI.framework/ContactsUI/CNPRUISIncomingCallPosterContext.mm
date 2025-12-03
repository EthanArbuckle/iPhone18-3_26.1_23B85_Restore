@interface CNPRUISIncomingCallPosterContext
+ (id)emptyContext;
- (CNPRUISIncomingCallPosterContext)initWithContact:(id)contact showName:(BOOL)name;
- (CNPRUISIncomingCallPosterContext)initWithNameVariations:(id)variations preferredNameStyle:(unint64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster;
@end

@implementation CNPRUISIncomingCallPosterContext

- (CNPRUISIncomingCallPosterContext)initWithContact:(id)contact showName:(BOOL)name
{
  contactCopy = contact;
  posterName = [contactCopy posterName];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    selfCopy = +[CNPRUISIncomingCallPosterContext emptyContext];
  }

  else
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v9 = [unifiedMeContactMonitor isMeContact:contactCopy];

    v10 = objc_alloc(MEMORY[0x1E69DD2E8]);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v12 = [v10 initWithFrame:?];

    [CNIncomingCallSnapshotViewController horizontalNameLabelBoundingRectForName:posterName window:v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [CNIncomingCallSnapshotViewController verticalNameLabelBoundingRectForName:posterName window:v12];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [[CNPRUISIncomingCallPosterContextNameVariations alloc] initWithShortName:posterName fullName:0];
    self = [(CNPRUISIncomingCallPosterContext *)self initWithNameVariations:v29 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:v9 imageAssetID:v14 personalPoster:v16, v18, v20, v22, v24, v26, v28];

    selfCopy = self;
  }

  return selfCopy;
}

- (CNPRUISIncomingCallPosterContext)initWithNameVariations:(id)variations preferredNameStyle:(unint64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster
{
  posterCopy = poster;
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  variationsCopy = variations;
  dCopy = d;
  v31.receiver = self;
  v31.super_class = CNPRUISIncomingCallPosterContext;
  v22 = [(CNPRUISIncomingCallPosterContext *)&v31 init];
  if (v22)
  {
    v23 = style == 1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v24 = getPRUISIncomingCallPosterContextClass_softClass;
    v36 = getPRUISIncomingCallPosterContextClass_softClass;
    if (!getPRUISIncomingCallPosterContextClass_softClass)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __getPRUISIncomingCallPosterContextClass_block_invoke;
      v32[3] = &unk_1E74E7518;
      v32[4] = &v33;
      __getPRUISIncomingCallPosterContextClass_block_invoke(v32);
      v24 = v34[3];
    }

    v25 = v24;
    _Block_object_dispose(&v33, 8);
    v26 = [v24 alloc];
    wrappedNameVariations = [variationsCopy wrappedNameVariations];
    v28 = [v26 initWithNameVariations:wrappedNameVariations preferredNameStyle:v23 horizontalTitleBoundingRect:dCopy verticalTitleBoundingRect:posterCopy imageAssetID:v17 personalPoster:{v16, v15, v14, x, y, width, height}];
    wrappedIncomingCallPosterContext = v22->_wrappedIncomingCallPosterContext;
    v22->_wrappedIncomingCallPosterContext = v28;
  }

  return v22;
}

+ (id)emptyContext
{
  v2 = [self alloc];
  v3 = [v2 initWithNameVariations:0 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:*MEMORY[0x1E695F058] personalPoster:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v3;
}

@end