@interface CRLMultipleImporterHelper
- (CRLMultipleImporterHelper)initWithImporters:(id)a3;
- (void)completeImportWithCompatibilityOnAllDevices:(BOOL)a3 allowHEVCContent:(BOOL)a4;
- (void)importer:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6;
- (void)mediaCompatibilityCheckHasBeenHandledForImporter:(id)a3;
@end

@implementation CRLMultipleImporterHelper

- (CRLMultipleImporterHelper)initWithImporters:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLMultipleImporterHelper;
  v5 = [(CRLMultipleImporterHelper *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    importers = v5->_importers;
    v5->_importers = v6;

    v8 = [[NSMutableSet alloc] initWithArray:v4];
    importersNeedingToRequestMediaCompatibilityRequirement = v5->_importersNeedingToRequestMediaCompatibilityRequirement;
    v5->_importersNeedingToRequestMediaCompatibilityRequirement = v8;
  }

  return v5;
}

- (void)importer:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6
{
  v17 = a3;
  v10 = a6;
  mediaCompatibilityRequirementReplyBlocksForImporters = self->_mediaCompatibilityRequirementReplyBlocksForImporters;
  if (!mediaCompatibilityRequirementReplyBlocksForImporters)
  {
    v12 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:{-[NSArray count](self->_importers, "count")}];
    v13 = self->_mediaCompatibilityRequirementReplyBlocksForImporters;
    self->_mediaCompatibilityRequirementReplyBlocksForImporters = v12;

    mediaCompatibilityRequirementReplyBlocksForImporters = self->_mediaCompatibilityRequirementReplyBlocksForImporters;
  }

  v14 = [v10 copy];
  [(NSMapTable *)mediaCompatibilityRequirementReplyBlocksForImporters setObject:v14 forKey:v17];

  v15 = sub_10032658C(self->_mediaTypesRequestingConversion, a5);
  v16 = self->_reasonsForMediaConversion | a4;
  self->_mediaTypesRequestingConversion = v15;
  self->_reasonsForMediaConversion = v16;
}

- (void)mediaCompatibilityCheckHasBeenHandledForImporter:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_importersNeedingToRequestMediaCompatibilityRequirement containsObject:v4]& 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B8D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B8E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B978();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMultipleImporterHelper mediaCompatibilityCheckHasBeenHandledForImporter:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMultipleImporterHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:55 isFatal:0 description:"Importer compatibility check is being handled for an importer not in the list."];
  }

  [(NSMutableSet *)self->_importersNeedingToRequestMediaCompatibilityRequirement removeObject:v4];
}

- (void)completeImportWithCompatibilityOnAllDevices:(BOOL)a3 allowHEVCContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![(CRLMultipleImporterHelper *)self allImportersHaveGivenCompatibilityResponse])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B9A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B9B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134BA48();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLMultipleImporterHelper completeImportWithCompatibilityOnAllDevices:allowHEVCContent:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMultipleImporterHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:61 isFatal:0 description:"Should not attempt to complete compatibility logic if not all importers have provided a compatibility response!"];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_mediaCompatibilityRequirementReplyBlocksForImporters;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMapTable *)self->_mediaCompatibilityRequirementReplyBlocksForImporters objectForKey:*(*(&v16 + 1) + 8 * i), v16];
        v15[2](v15, v5, v4);
      }

      v12 = [(NSMapTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(NSMapTable *)self->_mediaCompatibilityRequirementReplyBlocksForImporters removeAllObjects];
  self->_mediaTypesRequestingConversion = 0;
  self->_reasonsForMediaConversion = 0;
}

@end