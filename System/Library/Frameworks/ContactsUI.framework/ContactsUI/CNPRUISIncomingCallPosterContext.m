@interface CNPRUISIncomingCallPosterContext
+ (id)emptyContext;
- (CNPRUISIncomingCallPosterContext)initWithContact:(id)a3 showName:(BOOL)a4;
- (CNPRUISIncomingCallPosterContext)initWithNameVariations:(id)a3 preferredNameStyle:(unint64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8;
@end

@implementation CNPRUISIncomingCallPosterContext

- (CNPRUISIncomingCallPosterContext)initWithContact:(id)a3 showName:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 posterName];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = +[CNPRUISIncomingCallPosterContext emptyContext];
  }

  else
  {
    v8 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v9 = [v8 isMeContact:v5];

    v10 = objc_alloc(MEMORY[0x1E69DD2E8]);
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 bounds];
    v12 = [v10 initWithFrame:?];

    [CNIncomingCallSnapshotViewController horizontalNameLabelBoundingRectForName:v6 window:v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [CNIncomingCallSnapshotViewController verticalNameLabelBoundingRectForName:v6 window:v12];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [[CNPRUISIncomingCallPosterContextNameVariations alloc] initWithShortName:v6 fullName:0];
    self = [(CNPRUISIncomingCallPosterContext *)self initWithNameVariations:v29 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:v9 imageAssetID:v14 personalPoster:v16, v18, v20, v22, v24, v26, v28];

    v7 = self;
  }

  return v7;
}

- (CNPRUISIncomingCallPosterContext)initWithNameVariations:(id)a3 preferredNameStyle:(unint64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8
{
  v8 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5.size.height;
  v15 = a5.size.width;
  v16 = a5.origin.y;
  v17 = a5.origin.x;
  v20 = a3;
  v21 = a7;
  v31.receiver = self;
  v31.super_class = CNPRUISIncomingCallPosterContext;
  v22 = [(CNPRUISIncomingCallPosterContext *)&v31 init];
  if (v22)
  {
    v23 = a4 == 1;
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
    v27 = [v20 wrappedNameVariations];
    v28 = [v26 initWithNameVariations:v27 preferredNameStyle:v23 horizontalTitleBoundingRect:v21 verticalTitleBoundingRect:v8 imageAssetID:v17 personalPoster:{v16, v15, v14, x, y, width, height}];
    wrappedIncomingCallPosterContext = v22->_wrappedIncomingCallPosterContext;
    v22->_wrappedIncomingCallPosterContext = v28;
  }

  return v22;
}

+ (id)emptyContext
{
  v2 = [a1 alloc];
  v3 = [v2 initWithNameVariations:0 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:*MEMORY[0x1E695F058] personalPoster:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v3;
}

@end