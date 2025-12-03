@interface PDFPage
+ (BOOL)_getBooleanProperty:(id)property forKey:(id)key withDefault:(BOOL)default;
+ (BOOL)isExcludingAKAnnotationRenderingForThisThread;
+ (BOOL)isNativeRotationDrawingEnabledForThisThread;
+ (BOOL)shouldHideAnnotationsForThisThread;
+ (BOOL)useLegacyImageHandling;
+ (CGPDFPage)_createPageRefFromImage:(CGImage *)image andOptions:(id)options;
+ (OS_dispatch_queue)displayListCreationQueue;
+ (id)fontWithPDFFont:(CGPDFFont *)font size:(float)size;
+ (void)setExcludingAKAnnotationRenderingForThisThread:(BOOL)thread;
+ (void)setNativeRotationDrawingEnabledForThisThread:(BOOL)thread;
+ (void)setShouldHideAnnotationsForThisThread:(BOOL)thread;
- (BOOL)_writeToConsumer:(CGDataConsumer *)consumer;
- (BOOL)columnAtPoint:(CGPoint)point;
- (BOOL)columnAtPointIfAvailable:(CGPoint)available;
- (BOOL)containsDetectedFormFields;
- (BOOL)containsFormFields;
- (BOOL)containsFormFieldsWithContentType;
- (BOOL)disableUndoManagerForAK;
- (BOOL)hasArtBox;
- (BOOL)hasBleedBox;
- (BOOL)hasCropBox;
- (BOOL)hasPopups;
- (BOOL)hasTrimBox;
- (BOOL)pathIntersectsWithRedactionPath:(CGPath *)path;
- (BOOL)rectIntersectsWithRedactionPath:(CGRect)path;
- (BOOL)setPageRef:(CGPDFPage *)ref;
- (CGAffineTransform)getDrawingTransformForBox:(SEL)box;
- (CGDisplayList)_createDisplayListTrackingGlyphs:(BOOL)glyphs;
- (CGDisplayList)copyDisplayList;
- (CGImage)_newCGImageWithBox:(int64_t)box bitmapSize:(PDFSizeIntegral)size scale:(double)scale offset:(CGPoint)offset colorSpace:(CGColorSpace *)space backgroundColor:(id)color withRotation:(BOOL)rotation withAntialiasing:(BOOL)self0 withAnnotations:(BOOL)self1 withBookmark:(BOOL)self2 withOptions:(id)self3 withDelegate:(id)self4;
- (CGPDFPageLayout)pageLayout;
- (CGPDFPageLayout)pageLayoutIfAvail;
- (CGPath)createRedactionPath;
- (CGRect)boundsForBox:(PDFDisplayBox)box;
- (CGRect)characterBoundsAtIndex:(NSInteger)index;
- (CGRect)columnFrameAtPoint:(CGPoint)point;
- (Class)annotationSubclassForSubtype:(id)subtype;
- (NSAttributedString)attributedString;
- (NSData)dataRepresentation;
- (NSInteger)characterIndexAtPoint:(CGPoint)point;
- (NSString)label;
- (NSString)string;
- (NSUInteger)numberOfCharacters;
- (PDFAnnotation)annotationAtPoint:(CGPoint)point;
- (PDFDocument)document;
- (PDFPage)init;
- (PDFPage)initWithCGImage:(CGImage *)image options:(id)options;
- (PDFPage)initWithImage:(UIImage *)image;
- (PDFPage)initWithImage:(UIImage *)image options:(NSDictionary *)options;
- (PDFPage)initWithImageSource:(CGImageSource *)source;
- (PDFPage)initWithPageNumber:(unint64_t)number pageRect:(CGRect)rect rotation:(int64_t)rotation;
- (PDFPage)initWithPageRef:(CGPDFPage *)ref;
- (PDFRenderingProperties)renderingProperties;
- (PDFSelection)selectionForRect:(CGRect)rect;
- (PDFSelection)selectionForWordAtPoint:(CGPoint)point;
- (UIImage)thumbnailOfSize:(CGSize)size forBox:(PDFDisplayBox)box;
- (__CFDictionary)gcCreateBoxDictionary;
- (id)_createAttributedString;
- (id)_rvItemAtPoint:(CGPoint)point;
- (id)annotationAtRect:(CGRect)rect;
- (id)annotationChanges;
- (id)annotationForDetectedFormField:(id)field;
- (id)annotationWithUUID:(id)d;
- (id)annotationsForFieldName:(id)name;
- (id)annotationsIfAvail;
- (id)changedAnnotations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataDetectorResults;
- (id)debugQuickLookObject;
- (id)description;
- (id)detectedFormFieldForAnnotation:(id)annotation;
- (id)fetchAnnotationFromTaggedNodeRef:(CGPDFTaggedNode *)ref;
- (id)formFieldGroupForAnnotation:(id)annotation;
- (id)getActiveAnnotation;
- (id)getSelectedAnnotations;
- (id)imageOfSize:(CGSize)size forBox:(int64_t)box withOptions:(id)options;
- (id)lazilyLoadAnnotations;
- (id)pdfScannerResultAtPoint:(CGPoint)point onPageLayer:(id)layer;
- (id)rvItemAtPoint:(CGPoint)point;
- (id)rvItemAtPoint:(CGPoint)point onPageLayer:(id)layer;
- (id)rvItemWithPDFScannerResult:(id)result;
- (id)scannedAnnotationAtPoint:(CGPoint)point;
- (id)selectionForAll;
- (id)selectionForCharacterAtPoint:(CGPoint)point;
- (id)selectionForRangeCommon:(_NSRange)common isCodeRange:(BOOL)range;
- (id)selectionForTableRect:(CGRect)rect;
- (id)selectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint type:(int)type;
- (id)selectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint type:(int)type withClampedRange:(id)range withCellRect:(CGRect)rect;
- (id)selectionFromPointToBottom:(CGPoint)bottom type:(int)type;
- (id)selectionFromTopToPoint:(CGPoint)point type:(int)type;
- (id)tableSelectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (id)thumbnailOfSize:(CGSize)size forBox:(int64_t)box withBookmark:(BOOL)bookmark withAnnotations:(BOOL)annotations;
- (id)view;
- (int64_t)areaOfInterestAtPoint:(CGPoint)point;
- (int64_t)characterIndexNearestPoint:(CGPoint)point;
- (unint64_t)_documentIndex;
- (void)_addBox:(int)box toDictionary:(__CFDictionary *)dictionary offset:(CGPoint)offset;
- (void)_addWidgetAnnotationToLookupDictionary:(id)dictionary;
- (void)_buildPageLayout;
- (void)_commonInit;
- (void)_createRetainedDisplayList;
- (void)_drawAnnotationsWithBox:(int64_t)box inContext:(CGContext *)context;
- (void)_drawBookmarkInContext:(CGContext *)context;
- (void)_handlePageRefChangeWithOldRotation:(int64_t)rotation oldMediaBox:(CGRect)box;
- (void)_postAnnotationsChangedNotificationCoalesced;
- (void)_releaseDisplayList;
- (void)_removeWidgetAnnotationFromLookupDictionary:(id)dictionary;
- (void)_scanData:(id)data;
- (void)addAnnotation:(id)annotation withUndo:(BOOL)undo;
- (void)addAnnotationFormField:(id)field;
- (void)addDetectedAnnotations:(id)annotations;
- (void)addFormFieldGroup:(id)group;
- (void)addRedactionFromRectangularSelectionWithRect:(CGRect)rect;
- (void)addedAnnotation:(id)annotation forFormField:(id)field;
- (void)changedAnnotation:(id)annotation;
- (void)dealloc;
- (void)drawAnnotationsWithBox:(int64_t)box inContext:(CGContext *)context passingTest:(id)test;
- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context isThumbnail:(BOOL)thumbnail;
- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withOptions:(id)options;
- (void)enableUndoManagerForAK:(BOOL)k;
- (void)ensureDisplayList;
- (void)enumerateApplicationDataUsingBlock:(id)block;
- (void)fetchAnnotationsWithCompletion:(id)completion deliveredOnQueue:(id)queue;
- (void)fetchPageLayoutWithCompletion:(id)completion deliveredOnQueue:(id)queue;
- (void)getAnnotations;
- (void)getDisplayListWithCompletion:(id)completion onQueue:(id)queue;
- (void)insertAnnotation:(id)annotation atIndex:(int64_t)index;
- (void)postAnnotationsChangedNotification;
- (void)postPageDidChangeBoundsNotification;
- (void)postPageDidRotateNotification;
- (void)printActivePageAnnotations;
- (void)purgeAll;
- (void)purgePageLayout;
- (void)removeAnnotation:(id)annotation atIndex:(int64_t)index;
- (void)removeAnnotation:(id)annotation withUndo:(BOOL)undo;
- (void)removeFromDetectedAnnotations:(id)annotations;
- (void)replaceAnnotation:(id)annotation withAnnotation:(id)withAnnotation;
- (void)resetChangedAnnotations;
- (void)setApplicationData:(id)data withName:(id)name;
- (void)setBookmarked:(BOOL)bookmarked;
- (void)setBookmarked:(BOOL)bookmarked updateBookmarks:(BOOL)bookmarks;
- (void)setBounds:(CGRect)bounds forBox:(PDFDisplayBox)box;
- (void)setDisplaysAnnotations:(BOOL)displaysAnnotations;
- (void)setExtraContentStream:(CGPDFStream *)stream steamDocument:(CGPDFDocument *)document;
- (void)setRotation:(NSInteger)rotation;
- (void)setView:(id)view;
- (void)setupAKPageAdaptorIfNecessary;
- (void)transformContext:(CGContextRef)context forBox:(PDFDisplayBox)box;
@end

@implementation PDFPage

+ (OS_dispatch_queue)displayListCreationQueue
{
  if (displayListCreationQueue_onceToken != -1)
  {
    +[PDFPage displayListCreationQueue];
  }

  v3 = displayListCreationQueue_displayListCreationQueue;

  return v3;
}

void __35__PDFPage_displayListCreationQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("PDFKit.PDFPage.displayListCreationQueue", attr);
  v2 = displayListCreationQueue_displayListCreationQueue;
  displayListCreationQueue_displayListCreationQueue = v1;
}

+ (BOOL)useLegacyImageHandling
{
  if (useLegacyImageHandling_onceToken != -1)
  {
    +[PDFPage useLegacyImageHandling];
  }

  if (useLegacyImageHandling_runningXCTest != 1)
  {
    return dyld_program_sdk_at_least() ^ 1;
  }

  return GetDefaultsWriteValue(@"PDFKit2_PDFPageUseLegacyImageHandling", 0);
}

void __33__PDFPage_useLegacyImageHandling__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 environment];
  v1 = [v0 objectForKey:@"PDFKit_RunningUnitTest"];
  useLegacyImageHandling_runningXCTest = v1 != 0;
}

- (PDFPage)initWithPageRef:(CGPDFPage *)ref
{
  v7.receiver = self;
  v7.super_class = PDFPage;
  v4 = [(PDFPage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PDFPage *)v4 _commonInit];
    [(PDFPage *)v5 setPageRef:ref];
    v5->_pageNumber = CGPDFPageGetPageNumber(ref);
    v5->_isFullyConstructed = 1;
  }

  return v5;
}

- (PDFPage)initWithImageSource:(CGImageSource *)source
{
  v16[1] = *MEMORY[0x1E69E9840];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
  if (ImageAtIndex)
  {
    CGImageGetSizeAfterOrientation();
    v6 = v5;
    v8 = v7;
    v9.n128_u64[0] = 0;
    v10.n128_u64[0] = 0;
    v15 = @"PDFPageImageInitializationOptionMediaBox";
    v11 = [MEMORY[0x1E696B098] valueWithRect:{PDFRectMake(v9, v10, v6, v8)}];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    v13 = [(PDFPage *)self initWithCGImage:ImageAtIndex options:v12];
    CGImageRelease(ImageAtIndex);
    self = v13;

    ImageAtIndex = self;
  }

  return ImageAtIndex;
}

- (PDFPage)initWithCGImage:(CGImage *)image options:(id)options
{
  optionsCopy = options;
  v7 = [objc_opt_class() _createPageRefFromImage:image andOptions:optionsCopy];
  if (v7)
  {
    v8 = v7;
    v9 = [(PDFPage *)self initWithPageRef:v7];
    v10 = v9;
    if (v9)
    {
      v9->_candidateForOCR = 1;
      v9->_requestedOCR = [objc_opt_class() _getBooleanProperty:optionsCopy forKey:@"PDFPageImageInitializationOptionPerformOCR" withDefault:0];
      v10->_candidateForFormDetection = 1;
      if ([objc_opt_class() useLegacyImageHandling])
      {
        v10->_pageImage = CGImageRetain(image);
        v11 = [optionsCopy copy];
        pageImageOptions = v10->_pageImageOptions;
        v10->_pageImageOptions = v11;
      }
    }

    CGPDFPageRelease(v8);
    self = v10;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_Cgpdfpagecreat.isa, image);
    selfCopy = 0;
  }

  return selfCopy;
}

- (PDFPage)initWithPageNumber:(unint64_t)number pageRect:(CGRect)rect rotation:(int64_t)rotation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14.receiver = self;
  v14.super_class = PDFPage;
  v11 = [(PDFPage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PDFPage *)v11 _commonInit];
    v12->_pageNumber = number;
    v12->_mediaBox.origin.x = x;
    v12->_mediaBox.origin.y = y;
    v12->_mediaBox.size.width = width;
    v12->_mediaBox.size.height = height;
    v12->_rotation = PDFNormalizeRotation(rotation);
  }

  return v12;
}

- (void)setupAKPageAdaptorIfNecessary
{
  if (!self->_akPageAdaptor)
  {
    aBlock[5] = v5;
    aBlock[6] = v4;
    aBlock[9] = v2;
    aBlock[10] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__PDFPage_setupAKPageAdaptorIfNecessary__block_invoke;
    aBlock[3] = &unk_1E8150990;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v6[2](v6);
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __40__PDFPage_setupAKPageAdaptorIfNecessary__block_invoke_2;
      v7[3] = &unk_1E8152250;
      v8 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }
}

void __40__PDFPage_setupAKPageAdaptorIfNecessary__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [[PDFAKPageAdaptor alloc] initWithPDFPage:*(a1 + 32)];
  objc_storeStrong((*(a1 + 32) + 368), v2);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 128);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setupAKAnnotationAdaptorIfNecessary];
        [(PDFAKPageAdaptor *)v2 pdfPage:*(a1 + 32) didAddAnnotation:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)setPageRef:(CGPDFPage *)ref
{
  if (!ref)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_pageLock);
  if (self->_page == ref)
  {
    os_unfair_lock_unlock(&self->_pageLock);
    return 1;
  }

  BoxRect = CGPDFPageGetBoxRect(ref, kCGPDFMediaBox);
  if (BoxRect.size.width > 0.0 && BoxRect.size.height > 0.0)
  {
    page = self->_page;
    if (page)
    {
      CGPDFPageRelease(page);
    }

    rotation = self->_rotation;
    x = self->_mediaBox.origin.x;
    y = self->_mediaBox.origin.y;
    width = self->_mediaBox.size.width;
    height = self->_mediaBox.size.height;
    self->_page = CGPDFPageRetain(ref);
    RotationAngle = CGPDFPageGetRotationAngle(ref);
    self->_rotation = PDFNormalizeRotation(RotationAngle);
    os_unfair_lock_unlock(&self->_pageLock);
    [(PDFPage *)self _handlePageRefChangeWithOldRotation:rotation oldMediaBox:x, y, width, height];
    return 1;
  }

  os_unfair_lock_unlock(&self->_pageLock);
  return 0;
}

- (void)_handlePageRefChangeWithOldRotation:(int64_t)rotation oldMediaBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  [(PDFPage *)self boundsForBox:0];
  [(PDFPage *)self setBounds:0 forBox:?];
  [(PDFPage *)self boundsForBox:1];
  [(PDFPage *)self setBounds:1 forBox:?];
  [(PDFPage *)self boundsForBox:2];
  [(PDFPage *)self setBounds:2 forBox:?];
  [(PDFPage *)self boundsForBox:3];
  [(PDFPage *)self setBounds:3 forBox:?];
  [(PDFPage *)self boundsForBox:4];
  [(PDFPage *)self setBounds:4 forBox:?];
  self->_didChangeBounds = 0;
  Dictionary = CGPDFPageGetDictionary(self->_page);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PDFPage__handlePageRefChangeWithOldRotation_oldMediaBox___block_invoke;
  block[3] = &unk_1E8150B70;
  block[4] = self;
  CGPDFDictionaryApplyBlock(Dictionary, block, 0);
  document = [(PDFPage *)self document];

  if (document)
  {
    self->_isFullyConstructed = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFPagePageRefChanged" object:self];

    if (self->_rotation != rotation)
    {
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        [(PDFPage *)self postPageDidRotateNotification];
      }

      else
      {
        [(PDFPage *)self performSelectorOnMainThread:sel_postPageDidRotateNotification withObject:0 waitUntilDone:0];
      }
    }

    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (!PDFRectEqualToRect(v14, self->_mediaBox))
    {
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        [(PDFPage *)self postPageDidChangeBoundsNotification];
      }

      else
      {
        [(PDFPage *)self performSelectorOnMainThread:sel_postPageDidChangeBoundsNotification withObject:0 waitUntilDone:0];
      }
    }
  }
}

uint64_t __59__PDFPage__handlePageRefChangeWithOldRotation_oldMediaBox___block_invoke(uint64_t a1, uint64_t a2, CGPDFObject *a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  if ([v5 hasPrefix:@"AAPL:"])
  {
    v6 = [v5 substringFromIndex:5];

    value = 0;
    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeStream, &value))
    {
      v7 = *(a1 + 32);
      v8 = CGPDFStreamCopyData(value, 0);
      [v7 setApplicationData:v8 withName:v6];
    }
  }

  else
  {
    v6 = v5;
  }

  return 1;
}

- (void)purgeAll
{
  text = self->_text;
  self->_text = 0;

  attributedString = self->_attributedString;
  self->_attributedString = 0;

  CGPDFPageLayoutRelease();
  self->_layout = 0;
  [(PDFPage *)self pageRef];

  CGPDFPageRemoveLayout();
}

- (void)_drawAnnotationsWithBox:(int64_t)box inContext:(CGContext *)context
{
  v20 = *MEMORY[0x1E69E9840];
  lazilyLoadAnnotations = [(PDFPage *)self lazilyLoadAnnotations];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [lazilyLoadAnnotations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(lazilyLoadAnnotations);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (!+[PDFPage isExcludingAKAnnotationRenderingForThisThread](PDFPage, "isExcludingAKAnnotationRenderingForThisThread") || ([v11 akAnnotationAdaptor], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "akAnnotation"), v13 = objc_claimAutoreleasedReturnValue(), v12, v13, !v13))
        {
          if (!+[PDFPage shouldHideAnnotationsForThisThread](PDFPage, "shouldHideAnnotationsForThisThread") && (self->_displaysMarkups || ([v11 isMarkupAnnotation] & 1) == 0) && (objc_msgSend(v11, "isHidden") & 1) == 0 && objc_msgSend(v11, "shouldDisplay"))
          {
            [v11 drawWithBox:box inContext:context];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [lazilyLoadAnnotations countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (int64_t)areaOfInterestAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  annotationsIfAvail = [(PDFPage *)self annotationsIfAvail];

  if (annotationsIfAvail && (([(PDFPage *)self annotationAtPoint:x, y], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PDFPage *)self scannedAnnotationAtPoint:x, y], (v7 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v8 = v7;
    v9 = [v7 valueForAnnotationKey:@"/Subtype"];
    v10 = [v8 valueForAnnotationKey:@"/FT"];
    v11 = [v8 valueForAnnotationKey:@"/Subtype"];
    v12 = [v11 isEqualToString:@"/Link"];

    if (v12)
    {
      v13 = 13;
    }

    else if ([v9 isEqualToString:@"/Popup"])
    {
      v13 = 133;
    }

    else if ([v9 isEqualToString:@"/Widget"] && objc_msgSend(v10, "isEqualToString:", @"/Tx") && !objc_msgSend(v8, "isReadOnly"))
    {
      v13 = 37;
    }

    else if ([v9 isEqualToString:@"/Widget"] && objc_msgSend(v10, "isEqualToString:", @"/Btn") && !objc_msgSend(v8, "isReadOnly"))
    {
      v13 = 21;
    }

    else if ([v9 isEqualToString:@"/Text"])
    {
      v13 = 69;
    }

    else
    {
      v13 = 5;
    }
  }

  else
  {
    v13 = 1;
  }

  document = [(PDFPage *)self document];
  if ([(PDFPage *)self pageLayoutIfAvail])
  {
    PDFPointToCGPoint(x, y);
    AreaOfInterestAtPoint = CGPDFPageLayoutGetAreaOfInterestAtPoint();
    v13 |= (AreaOfInterestAtPoint << 7) & 0x100 | (2 * (AreaOfInterestAtPoint & 1u));
  }

  return v13;
}

- (PDFPage)init
{
  v5.receiver = self;
  v5.super_class = PDFPage;
  v2 = [(PDFPage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PDFPage *)v2 _commonInit];
    [(PDFPage *)v3 setBounds:0 forBox:0.0, 0.0, 612.0, 792.0];
    v3->_isFullyConstructed = 1;
  }

  return v3;
}

- (PDFPage)initWithImage:(UIImage *)image
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = image;
  [(UIImage *)v4 size];
  v6 = v5;
  v8 = v7;
  v9.n128_u64[0] = 0;
  v10.n128_u64[0] = 0;
  v15 = @"PDFPageImageInitializationOptionMediaBox";
  v11 = [MEMORY[0x1E696B098] valueWithRect:{PDFRectMake(v9, v10, v6, v8)}];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = [(PDFPage *)self initWithImage:v4 options:v12];
  return v13;
}

- (PDFPage)initWithImage:(UIImage *)image options:(NSDictionary *)options
{
  v6 = image;
  v7 = options;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = CGImageRetain([(UIImage *)v6 CGImage]);
  v20[3] = v8;
  if (!v8)
  {
    v9 = CGDisplayListCreate();
    if (v9)
    {
      v10 = CGDisplayListContextCreate();
      if (v10)
      {
        [(UIImage *)v6 size];
        v12 = v11;
        v14 = v13;
        UIGraphicsPushContext(v10);
        [(UIImage *)v6 drawInRect:0.0, 0.0, v12, v14];
        UIGraphicsPopContext();
        NumberOfEntries = CGDisplayListGetNumberOfEntries();
        NumberOfEntriesOfType = CGDisplayListGetNumberOfEntriesOfType();
        if (NumberOfEntries == 1 && NumberOfEntriesOfType == 1)
        {
          CGDisplayListEnumerateEntriesWithOptions();
        }

        CFRelease(v10);
      }

      CFRelease(v9);
    }
  }

  v17 = [(PDFPage *)self initWithCGImage:v20[3] options:v7];
  CGImageRelease(v20[3]);
  _Block_object_dispose(&v19, 8);

  return v17;
}

CGImageRef __33__PDFPage_initWithImage_options___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = CGDisplayListEntryImageGetImage();
  result = CGImageRetain(*(*(*(a1 + 32) + 8) + 24));
  *a3 = 1;
  return result;
}

- (void)dealloc
{
  akPageAdaptor = self->_akPageAdaptor;
  if (akPageAdaptor)
  {
    [(PDFAKPageAdaptor *)akPageAdaptor teardown];
    v4 = self->_akPageAdaptor;
    self->_akPageAdaptor = 0;
  }

  if (self->_layout)
  {
    CGPDFPageLayoutRelease();
    self->_layout = 0;
  }

  CGImageRelease(self->_pageImage);
  page = self->_page;
  if (page)
  {
    CGPDFPageRelease(page);
    self->_page = 0;
  }

  pageBackgroundColorHint = self->_pageBackgroundColorHint;
  if (pageBackgroundColorHint)
  {
    CGColorRelease(pageBackgroundColorHint);
    self->_pageBackgroundColorHint = 0;
  }

  displayList = self->_displayList;
  if (displayList)
  {
    CFRelease(displayList);
  }

  v8.receiver = self;
  v8.super_class = PDFPage;
  [(PDFPage *)&v8 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 365) = 0;
    WeakRetained = objc_loadWeakRetained(&self->_document);
    objc_storeWeak((v6 + 8), WeakRetained);

    Document = CGPDFPageGetDocument(self->_page);
    if (Document)
    {
      CGPDFPageGetPageNumber(self->_page);
      Document = CGPDFDocumentCopyPage();
    }

    *(v6 + 16) = Document;
    v9 = [(NSString *)self->_label copyWithZone:zone];
    v10 = *(v6 + 48);
    *(v6 + 48) = v9;

    *(v6 + 56) = CGImageRetain(self->_pageImage);
    v11 = [(NSDictionary *)self->_pageImageOptions copyWithZone:zone];
    v12 = *(v6 + 64);
    *(v6 + 64) = v11;

    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v6 + 92) = 0;
    *(v6 + 96) = 0;
    v13 = *(v6 + 104);
    *(v6 + 104) = 0;

    v14 = *(v6 + 112);
    *(v6 + 112) = 0;

    *(v6 + 120) = self->_displaysAnnotations;
    *(v6 + 121) = self->_displaysMarkups;
    v15 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v16 = *(v6 + 144);
    *(v6 + 144) = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v18 = *(v6 + 152);
    *(v6 + 152) = v17;

    if (self->_annotations)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = *(v6 + 128);
      *(v6 + 128) = v19;

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = self->_annotations;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v40 + 1) + 8 * i);
            type = [v26 type];
            v28 = [type isEqualToString:@"Popup"];

            if ((v28 & 1) == 0)
            {
              v29 = [v26 copyWithZone:zone];
              [v29 setPage:v6];
              [*(v6 + 128) addObject:v29];
              popup = [v29 popup];

              if (popup)
              {
                v31 = *(v6 + 128);
                popup2 = [v29 popup];
                [v31 addObject:popup2];
              }
            }
          }

          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v33 = *(v6 + 128);
      *(v6 + 128) = 0;
    }

    *(v6 + 136) = *(v6 + 128) != 0;
    v34 = *(v6 + 160);
    *(v6 + 160) = 0;

    *(v6 + 168) = self->_rotation;
    [v6 setRotation:?];
    [(PDFPage *)self boundsForBox:0];
    [v6 setBounds:0 forBox:?];
    [(PDFPage *)self boundsForBox:1];
    [v6 setBounds:1 forBox:?];
    [(PDFPage *)self boundsForBox:2];
    [v6 setBounds:2 forBox:?];
    [(PDFPage *)self boundsForBox:3];
    [v6 setBounds:3 forBox:?];
    [(PDFPage *)self boundsForBox:4];
    [v6 setBounds:4 forBox:?];
    *(v6 + 424) = 0;
    *(v6 + 336) = 0;
    *(v6 + 344) = 0;
    *(v6 + 360) = 0;
    *(v6 + 425) = self->_candidateForOCR;
    *(v6 + 426) = self->_requestedOCR;
    *(v6 + 427) = self->_textFromOCR;
    *(v6 + 429) = self->_candidateForFormDetection;
    v35 = [(NSMutableArray *)self->_formFieldGroups mutableCopy];
    v36 = *(v6 + 448);
    *(v6 + 448) = v35;

    v37 = [(NSMutableDictionary *)self->_persistentApplicationData mutableCopy];
    v38 = *(v6 + 456);
    *(v6 + 456) = v37;

    *(v6 + 365) = 1;
  }

  return v6;
}

- (PDFDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (NSString)label
{
  label = self->_label;
  if (!label)
  {
    v4 = CGPDFPageCopyPageLabel();
    v5 = self->_label;
    self->_label = v4;

    label = self->_label;
  }

  return label;
}

- (CGRect)boundsForBox:(PDFDisplayBox)box
{
  if (box < (kPDFDisplayBoxArtBox|kPDFDisplayBoxCropBox))
  {
    v9 = self + 32 * box;
    origin = *(v9 + 11);
    size = *(v9 + 12);
    if (size.width == 0.0)
    {
      page = self->_page;
      if (page)
      {
        BoxRect = CGPDFPageGetBoxRect(page, box);
        origin.x = PDFRectMake(BoxRect.origin, *&BoxRect.origin.y, BoxRect.size.width, BoxRect.size.height);
        size.height = v11;
        origin.y = v12;
      }

      else
      {
        if (box >= kPDFDisplayBoxBleedBox)
        {
          origin = self->_cropBox.origin;
          size = self->_cropBox.size;
        }

        if (size.width == 0.0)
        {
          origin = self->_mediaBox.origin;
          size = self->_mediaBox.size;
        }
      }
    }

    y = origin.y;
    height = size.height;
    if (box)
    {
      v13 = PDFRectToCGRect([(PDFPage *)self boundsForBox:0]);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v38.origin.x = PDFRectToCGRect(v20);
      v38.origin.y = v21;
      v38.size.width = v22;
      v38.size.height = v23;
      v35.origin.x = v13;
      v35.origin.y = v15;
      v35.size.width = v17;
      v35.size.height = v19;
      v36 = CGRectIntersection(v35, v38);
      x = v36.origin.x;
      v25 = v36.origin.y;
      width = v36.size.width;
      v27 = v36.size.height;
      if (CGRectIsNull(v36))
      {
        x = *MEMORY[0x1E695F058];
        v25 = *(MEMORY[0x1E695F058] + 8);
        width = *(MEMORY[0x1E695F058] + 16);
        v27 = *(MEMORY[0x1E695F058] + 24);
      }

      origin.x = PDFRectFromCGRect(x, v25, width, v27);
      y = v28;
      height = v29;
    }
  }

  else
  {
    height = *(MEMORY[0x1E695F058] + 24);
    y = *(MEMORY[0x1E695F058] + 8);
    v32 = *MEMORY[0x1E695F058];
    v33 = *(MEMORY[0x1E695F058] + 16);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:@"boundsForBox: box is out of range"];
    origin.x = v32;
    size.width = v33;
  }

  v30 = y;
  v31 = height;
  result.size.width = size.width;
  result.origin.x = origin.x;
  result.size.height = v31;
  result.origin.y = v30;
  return result;
}

- (void)setBounds:(CGRect)bounds forBox:(PDFDisplayBox)box
{
  if (box >= (kPDFDisplayBoxArtBox|kPDFDisplayBoxCropBox))
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695DA20];

    [v5 raise:v6 format:{@"setBounds:forBox: box is out of range", bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];
    return;
  }

  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (box == kPDFDisplayBoxMediaBox && bounds.size.width == 0.0)
  {
    NSLog(&cfstr_WarningPdfpage.isa, a2);
    y = 0.0;
    width = 612.0;
    height = 792.0;
    x = 0.0;
LABEL_8:
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (!PDFRectEqualToRect(v16, self->_mediaBox))
    {
      self->_mediaBox.origin.x = x;
      self->_mediaBox.origin.y = y;
      self->_mediaBox.size.width = width;
      self->_mediaBox.size.height = height;
      if (self->_pageImage)
      {
        if ([objc_opt_class() useLegacyImageHandling])
        {
          v12 = [(NSDictionary *)self->_pageImageOptions mutableCopy];
          v13 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{self->_mediaBox.origin.x, self->_mediaBox.origin.y, self->_mediaBox.size.width, self->_mediaBox.size.height}];
          [v12 setObject:v13 forKeyedSubscript:@"PDFPageImageInitializationOptionMediaBox"];

          objc_storeStrong(&self->_pageImageOptions, v12);
          v14 = [objc_opt_class() _createPageRefFromImage:self->_pageImage andOptions:self->_pageImageOptions];
          if (v14)
          {
            v15 = v14;
            os_unfair_lock_lock(&self->_pageLock);
            CGPDFPageRelease(self->_page);
            self->_page = v15;
            os_unfair_lock_unlock(&self->_pageLock);
          }
        }
      }
    }

    goto LABEL_22;
  }

  if (box <= kPDFDisplayBoxCropBox)
  {
    if (box == kPDFDisplayBoxMediaBox)
    {
      goto LABEL_8;
    }

    self->_cropBox = bounds;
  }

  else if (box == kPDFDisplayBoxBleedBox)
  {
    self->_bleedBox = bounds;
  }

  else if (box == kPDFDisplayBoxTrimBox)
  {
    self->_trimBox = bounds;
  }

  else
  {
    self->_artBox = bounds;
  }

LABEL_22:
  if (self->_mediaBox.size.width == 0.0 && width > 0.0 && ![(PDFPage *)self pageRef])
  {
    self->_mediaBox.origin.x = x;
    self->_mediaBox.origin.y = y;
    self->_mediaBox.size.width = width;
    self->_mediaBox.size.height = height;
  }

  if (self->_isFullyConstructed)
  {
    self->_didChangeBounds = 1;
  }

  [(PDFPage *)self postPageDidChangeBoundsNotification];
}

- (void)postPageDidChangeBoundsNotification
{
  if (self->_isFullyConstructed)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFPageChangedBoundsForBox" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_document);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v11 = WeakRetained;
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"PDFPageChangedBoundsForBox" object:v11];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{self, @"page", 0}];
      [defaultCenter3 postNotificationName:@"PDFPageDidChangeBounds" object:v11 userInfo:v9];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 postNotificationName:@"PDFPageDidChangeBounds" object:self userInfo:0];

      v6 = v11;
    }

    MEMORY[0x1EEE66BB8](WeakRetained, v6);
  }
}

- (void)setRotation:(NSInteger)rotation
{
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v11 = WeakRetained;
  if (WeakRetained && ([WeakRetained allowsDocumentAssembly] & 1) == 0)
  {
    permissionsStatus = [v11 permissionsStatus];
    v10 = @"user";
    if (permissionsStatus == 2)
    {
      v10 = @"owner";
    }

    NSLog(&cfstr_PdfdocumentSSe_0.isa, v10);
  }

  else
  {
    v6 = self->_rotation;
    v7 = PDFNormalizeRotation(rotation);
    if (v6 != v7)
    {
      v8 = v7;
      [(PDFPage *)self pageRef];
      CGPDFPageSetRotationAngle();
      self->_rotation = v8;
      [(PDFPage *)self _releaseDisplayList];
      [(PDFAKPageAdaptor *)self->_akPageAdaptor pdfPageWasRotated:self];
      [(PDFPage *)self postPageDidRotateNotification];
    }
  }
}

- (void)postPageDidRotateNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_document);
  if (WeakRetained && self->_isFullyConstructed)
  {
    v7 = WeakRetained;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{self, @"page", 0}];
    [defaultCenter postNotificationName:@"PDFPageDidRotate" object:v7 userInfo:v5];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"PDFPageDidRotate" object:self userInfo:0];

    WeakRetained = v7;
  }
}

- (id)lazilyLoadAnnotations
{
  [(NSLock *)self->_lock_getAnnotations lock];
  annotations = self->_annotations;
  if (!annotations)
  {
    [(PDFPage *)self getAnnotations];
    atomic_store(1u, &self->_loadedAnnotations);
    annotations = self->_annotations;
  }

  v4 = [(NSMutableArray *)annotations copy];
  [(NSLock *)self->_lock_getAnnotations unlock];

  return v4;
}

- (id)annotationsIfAvail
{
  v3 = atomic_load(&self->_loadedAnnotations);
  if ((v3 & 1) == 0)
  {
    document = [(PDFPage *)self document];
    v5 = document;
    if (document)
    {
      textExtractionQueue = [document textExtractionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__PDFPage_annotationsIfAvail__block_invoke;
      block[3] = &unk_1E8150990;
      block[4] = self;
      dispatch_async(textExtractionQueue, block);
    }
  }

  annotations = self->_annotations;

  return annotations;
}

- (id)fetchAnnotationFromTaggedNodeRef:(CGPDFTaggedNode *)ref
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  ObjectReference = CGPDFTaggedNodeGetObjectReference();
  if (ObjectReference | v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PDFPage_fetchAnnotationFromTaggedNodeRef___block_invoke;
    v10[3] = &unk_1E81522A0;
    v10[5] = ObjectReference;
    v10[6] = v5;
    v10[4] = &v11;
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
    [(PDFPage *)self fetchAnnotationsWithCompletion:v10 deliveredOnQueue:v6];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __44__PDFPage_fetchAnnotationFromTaggedNodeRef___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 sourceDictionary] && CGPDFDictionaryGetObjectReference() == *(a1 + 40) && *(a1 + 48) == v9)
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)fetchAnnotationsWithCompletion:(id)completion deliveredOnQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = atomic_load(&self->_loadedAnnotations);
  if (v8)
  {
    completionCopy[2](completionCopy, self->_annotations);
  }

  else
  {
    document = [(PDFPage *)self document];
    if (document)
    {
      objc_initWeak(&location, self);
      textExtractionQueue = [document textExtractionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__PDFPage_fetchAnnotationsWithCompletion_deliveredOnQueue___block_invoke;
      block[3] = &unk_1E81522F0;
      objc_copyWeak(&v16, &location);
      v14 = queueCopy;
      v15 = completionCopy;
      dispatch_async(textExtractionQueue, block);

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __59__PDFPage_fetchAnnotationsWithCompletion_deliveredOnQueue___block_invoke_3;
      v11[3] = &unk_1E8152250;
      v12 = completionCopy;
      dispatch_async(queueCopy, v11);
    }
  }
}

void __59__PDFPage_fetchAnnotationsWithCompletion_deliveredOnQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained lazilyLoadAnnotations];
    v5 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PDFPage_fetchAnnotationsWithCompletion_deliveredOnQueue___block_invoke_2;
    block[3] = &unk_1E81522C8;
    objc_copyWeak(&v11, (a1 + 48));
    v6 = *(a1 + 40);
    v9 = v4;
    v10 = v6;
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v11);
  }
}

void __59__PDFPage_fetchAnnotationsWithCompletion_deliveredOnQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)setDisplaysAnnotations:(BOOL)displaysAnnotations
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_displaysAnnotations != displaysAnnotations)
  {
    self->_displaysAnnotations = displaysAnnotations;
    annotations = [(PDFPage *)self annotations];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [annotations countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(annotations);
          }

          [*(*(&v8 + 1) + 8 * v7++) updateAnnotationEffect];
        }

        while (v5 != v7);
        v5 = [annotations countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)addAnnotation:(id)annotation withUndo:(BOOL)undo
{
  undoCopy = undo;
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v7 = WeakRetained;
  if (!WeakRetained || ([WeakRetained allowsCommenting] & 1) != 0)
  {
    [(PDFPage *)self insertAnnotation:annotationCopy atIndex:-1];
    v8 = objc_loadWeakRetained(&self->_view);
    if (!v8 || !undoCopy)
    {
      goto LABEL_9;
    }

    akAnnotationAdaptor = [annotationCopy akAnnotationAdaptor];
    if (!akAnnotationAdaptor)
    {
      if (![v8 allowsUndo])
      {
LABEL_9:

        goto LABEL_13;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = PDFKitLocalizedString(@"Add %@");
      displayName = [annotationCopy displayName];
      akAnnotationAdaptor = [v10 stringWithFormat:v11, displayName];

      undoManager = [v8 undoManager];
      v14 = [undoManager prepareWithInvocationTarget:self];
      [v14 removeAnnotation:annotationCopy withUndo:1];

      undoManager2 = [v8 undoManager];
      v16 = PDFKitLocalizedString(akAnnotationAdaptor);
      [undoManager2 setActionName:v16];
    }

    goto LABEL_9;
  }

  permissionsStatus = [v7 permissionsStatus];
  v18 = @"user";
  if (permissionsStatus == 2)
  {
    v18 = @"owner";
  }

  NSLog(&cfstr_PdfpageSAddann.isa, v18);
LABEL_13:
}

- (void)insertAnnotation:(id)annotation atIndex:(int64_t)index
{
  v32[3] = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v8 = WeakRetained;
  if (!WeakRetained || ([WeakRetained allowsCommenting] & 1) != 0)
  {
    if (!annotationCopy)
    {
      goto LABEL_32;
    }

    [annotationCopy setPage:self];
    [(NSLock *)self->_lock_accessAnnotations lock];
    annotations = self->_annotations;
    if (annotations || (v10 = [(PDFPage *)self annotations], (annotations = self->_annotations) != 0))
    {
      if (index < 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
      v27 = self->_annotations;
      self->_annotations = v26;

      annotations = self->_annotations;
      if (index < 0)
      {
        goto LABEL_9;
      }
    }

    if ([(NSMutableArray *)annotations count]>= index)
    {
LABEL_10:
      if (([(NSMutableArray *)self->_annotations containsObject:annotationCopy]& 1) == 0)
      {
        [(NSMutableArray *)self->_annotations insertObject:annotationCopy atIndex:index];
        v28 = [[PDFAnnotationChange alloc] initWithAddedAnnotation:annotationCopy];
        [(NSMutableArray *)self->_annotationChanges addObject:?];
        [(NSMutableSet *)self->_changedAnnotations addObject:annotationCopy];
        shouldBurnIn = [annotationCopy shouldBurnIn];
        if (v8 && shouldBurnIn)
        {
          [v8 setDocumentHasBurnInAnnotations:1];
        }

        if ([annotationCopy isRedaction])
        {
          [v8 incrementRedactionCount];
        }

        if (self->_akPageAdaptor)
        {
          [annotationCopy setupAKAnnotationAdaptorIfNecessary];
          [(PDFAKPageAdaptor *)self->_akPageAdaptor pdfPage:self didAddAnnotation:annotationCopy];
        }

        v12 = [annotationCopy valueForAnnotationKey:@"/Popup"];
        if (v12 && ([(NSMutableArray *)self->_annotations containsObject:v12]& 1) == 0)
        {
          [v12 setPage:self];
          [(NSMutableArray *)self->_annotations insertObject:v12 atIndex:index + 1];
          v13 = [[PDFAnnotationChange alloc] initWithAddedAnnotation:v12];
          [(NSMutableArray *)self->_annotationChanges addObject:v13];
          [(NSMutableSet *)self->_changedAnnotations addObject:v12];
          if (self->_akPageAdaptor)
          {
            [v12 setupAKAnnotationAdaptorIfNecessary];
            [(PDFAKPageAdaptor *)self->_akPageAdaptor pdfPage:self didAddAnnotation:v12];
          }
        }

        v14 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
        v15 = [v14 isEqualToString:@"/Widget"];

        if (v15)
        {
          [(PDFPage *)self _addWidgetAnnotationToLookupDictionary:annotationCopy];
        }

        [annotationCopy addToPageView];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        view = [(PDFPage *)self view];
        v31[0] = @"page";
        v31[1] = @"annotation";
        v32[0] = self;
        v32[1] = annotationCopy;
        v31[2] = @"changeType";
        v18 = [MEMORY[0x1E696AD98] numberWithInt:0];
        v32[2] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
        [defaultCenter postNotificationName:@"PDFViewAnnotationsDidChange" object:view userInfo:v19];

        view2 = [(PDFPage *)self view];
        LODWORD(view) = [view2 allowsMarkupAnnotationEditing];

        if (view)
        {
          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          view3 = [(PDFPage *)self view];
          v29 = @"annotation";
          v30 = annotationCopy;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [defaultCenter2 postNotificationName:@"PDFPageAnnotationAddedNotificationNotification" object:view3 userInfo:v23];
        }
      }

      [(NSLock *)self->_lock_accessAnnotations unlock];
      goto LABEL_32;
    }

    annotations = self->_annotations;
LABEL_9:
    index = [(NSMutableArray *)annotations count];
    goto LABEL_10;
  }

  permissionsStatus = [v8 permissionsStatus];
  v25 = @"user";
  if (permissionsStatus == 2)
  {
    v25 = @"owner";
  }

  NSLog(&cfstr_PdfDocumentSPe.isa, v25);
LABEL_32:
}

- (void)removeAnnotation:(id)annotation withUndo:(BOOL)undo
{
  undoCopy = undo;
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v7 = WeakRetained;
  if (WeakRetained && ([WeakRetained allowsCommenting] & 1) == 0)
  {
    permissionsStatus = [v7 permissionsStatus];
    v20 = @"user";
    if (permissionsStatus == 2)
    {
      v20 = @"owner";
    }

    NSLog(&cfstr_PdfpageSRemove.isa, v20);
  }

  else
  {
    annotations = self->_annotations;
    if (annotations)
    {
      v9 = [(NSMutableArray *)annotations indexOfObject:annotationCopy];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(PDFPage *)self removeAnnotation:annotationCopy atIndex:v9];
        v10 = objc_loadWeakRetained(&self->_view);
        if (!v10 || !undoCopy)
        {
          goto LABEL_11;
        }

        akAnnotationAdaptor = [annotationCopy akAnnotationAdaptor];
        if (!akAnnotationAdaptor)
        {
          if (![v10 allowsUndo])
          {
LABEL_11:

            goto LABEL_15;
          }

          v12 = MEMORY[0x1E696AEC0];
          v13 = PDFKitLocalizedString(@"Remove %@");
          displayName = [annotationCopy displayName];
          akAnnotationAdaptor = [v12 stringWithFormat:v13, displayName];

          undoManager = [v10 undoManager];
          v16 = [undoManager prepareWithInvocationTarget:self];
          [v16 addAnnotation:annotationCopy withUndo:1];

          undoManager2 = [v10 undoManager];
          v18 = PDFKitLocalizedString(akAnnotationAdaptor);
          [undoManager2 setActionName:v18];
        }

        goto LABEL_11;
      }
    }
  }

LABEL_15:
}

- (void)removeAnnotation:(id)annotation atIndex:(int64_t)index
{
  v33[3] = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v7 = WeakRetained;
  if (WeakRetained && ([WeakRetained allowsCommenting] & 1) == 0)
  {
    permissionsStatus = [v7 permissionsStatus];
    v27 = @"user";
    if (permissionsStatus == 2)
    {
      v27 = @"owner";
    }

    NSLog(&cfstr_PdfDocumentSPe.isa, v27);
  }

  else if (annotationCopy)
  {
    [(NSLock *)self->_lock_accessAnnotations lock];
    if (self->_annotations)
    {
      if ([annotationCopy isRedaction])
      {
        [v7 decrementRedactionCount];
      }

      v8 = [annotationCopy valueForAnnotationKey:@"/Popup"];
      if (v8)
      {
        annotations = self->_annotations;
        if (annotations)
        {
          if ([(NSMutableArray *)annotations containsObject:v8])
          {
            [(NSMutableArray *)self->_annotations removeObject:v8];
            v10 = [[PDFAnnotationChange alloc] initWithRemovedAnnotation:v8];
            [(NSMutableArray *)self->_annotationChanges addObject:v10];
            [(NSMutableSet *)self->_changedAnnotations addObject:v8];
          }
        }
      }

      v29 = v8;
      v28 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
      if ([v28 isEqualToString:@"/Widget"])
      {
        v11 = [annotationCopy valueForAnnotationKey:@"/FT"];
        if ([v11 isEqualToString:@"/Tx"])
        {
          formData = [v7 formData];
          if (formData)
          {
            fieldName = [annotationCopy fieldName];
            [formData removeFormFieldWithFieldName:fieldName];
          }
        }

        [(PDFPage *)self _removeWidgetAnnotationFromLookupDictionary:annotationCopy];
      }

      v14 = [(PDFPage *)self detectedFormFieldForAnnotation:annotationCopy];
      v15 = v14;
      if (v14)
      {
        objc_setAssociatedObject(v14, @"com.apple.pdfkit.AnnotationAssociatedObjectKey", 0, 0);
      }

      [annotationCopy removeFromPageView];
      akPageAdaptor = self->_akPageAdaptor;
      if (akPageAdaptor)
      {
        [(PDFAKPageAdaptor *)akPageAdaptor pdfPage:self didRemoveAnnotation:annotationCopy];
      }

      [annotationCopy setPage:0];
      [(NSMutableArray *)self->_annotations removeObject:annotationCopy];
      v17 = [[PDFAnnotationChange alloc] initWithRemovedAnnotation:annotationCopy];
      [(NSMutableArray *)self->_annotationChanges addObject:v17];
      [(NSMutableSet *)self->_changedAnnotations addObject:annotationCopy];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      view = [(PDFPage *)self view];
      v32[0] = @"page";
      v32[1] = @"annotation";
      v33[0] = self;
      v33[1] = annotationCopy;
      v32[2] = @"changeType";
      v20 = [MEMORY[0x1E696AD98] numberWithInt:2];
      v33[2] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
      [defaultCenter postNotificationName:@"PDFViewAnnotationsDidChange" object:view userInfo:v21];

      view2 = [(PDFPage *)self view];
      LODWORD(v20) = [view2 allowsMarkupAnnotationEditing];

      if (v20)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        view3 = [(PDFPage *)self view];
        v30 = @"annotation";
        v31 = annotationCopy;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        [defaultCenter2 postNotificationName:@"PDFPageAnnotationRemovedNotificationNotification" object:view3 userInfo:v25];
      }

      [(NSLock *)self->_lock_accessAnnotations unlock];
    }

    else
    {
      [(NSLock *)self->_lock_accessAnnotations unlock];
    }
  }
}

- (void)replaceAnnotation:(id)annotation withAnnotation:(id)withAnnotation
{
  annotationCopy = annotation;
  withAnnotationCopy = withAnnotation;
  if (annotationCopy && withAnnotationCopy)
  {
    if (annotationCopy != withAnnotationCopy)
    {
      v7 = [(NSMutableArray *)self->_annotations indexOfObjectIdenticalTo:annotationCopy];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        NSLog(&cfstr_SOldannotation.isa, "[PDFPage replaceAnnotation:withAnnotation:]");
      }

      else
      {
        v8 = v7;
        [(PDFPage *)self removeAnnotation:annotationCopy atIndex:v7];
        [(PDFPage *)self insertAnnotation:withAnnotationCopy atIndex:v8];
      }
    }
  }

  else
  {
    NSLog(&cfstr_SInvalidNilPar.isa, "[PDFPage replaceAnnotation:withAnnotation:]");
  }
}

- (PDFAnnotation)annotationAtPoint:(CGPoint)point
{
  v4 = PDFPointToCGPoint(point.x, point.y);
  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  [(NSLock *)self->_lock_accessAnnotations lock];
  annotations = [(PDFPage *)self annotations];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__PDFPage_annotationAtPoint___block_invoke;
  v11[3] = &unk_1E8152318;
  *&v11[5] = v4;
  v11[6] = v6;
  v11[4] = &v12;
  [annotations enumerateObjectsWithOptions:2 usingBlock:v11];
  if (!v13[5])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__PDFPage_annotationAtPoint___block_invoke_2;
    v10[3] = &unk_1E8152318;
    *&v10[5] = v4;
    v10[6] = v6;
    v10[4] = &v12;
    [annotations enumerateObjectsWithOptions:2 usingBlock:v10];
  }

  [(NSLock *)self->_lock_accessAnnotations unlock];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __29__PDFPage_annotationAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 valueForAnnotationKey:@"/Subtype"];
  v8 = [v7 isEqualToString:@"/Popup"];

  if ((v8 & 1) == 0 && [v9 shouldDisplay] && ((objc_msgSend(v9, "containsPoint:", *(a1 + 40), *(a1 + 48)) & 1) != 0 || objc_msgSend(v9, "noteContainsPoint:", *(a1 + 40), *(a1 + 48))))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __29__PDFPage_annotationAtPoint___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 valueForAnnotationKey:@"/Subtype"];
  v8 = [v7 isEqualToString:@"/Popup"];

  if ((v8 & 1) == 0 && [v9 shouldDisplay] && ((objc_msgSend(v9, "containsPoint:", *(a1 + 40), *(a1 + 48)) & 1) != 0 || objc_msgSend(v9, "noteContainsPoint:", *(a1 + 40), *(a1 + 48))))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)annotationAtRect:(CGRect)rect
{
  v4 = PDFRectToCGRect(self);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NSLock *)self->_lock_accessAnnotations lock];
  annotations = [(PDFPage *)self annotations];
  v12 = [annotations count];
  if (v12)
  {
    v13 = v12 - 1;
    while (1)
    {
      v14 = [annotations objectAtIndex:v13];
      v15 = [v14 valueForAnnotationKey:@"/Subtype"];
      v16 = [v15 isEqualToString:@"/Popup"];

      if ((v16 & 1) == 0)
      {
        if ([v14 shouldDisplay])
        {
          v19.origin.x = PDFRectToCGRect([v14 bounds]);
          v20.origin.x = v4;
          v20.origin.y = v6;
          v20.size.width = v8;
          v20.size.height = v10;
          if (CGRectContainsRect(v19, v20))
          {
            break;
          }
        }
      }

      if (--v13 == -1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  [(NSLock *)self->_lock_accessAnnotations unlock];

  return v14;
}

- (BOOL)hasPopups
{
  v16 = *MEMORY[0x1E69E9840];
  [(PDFPage *)self lazilyLoadAnnotations];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) valueForAnnotationKey:{@"/Subtype", v11}];
        v8 = [v7 isEqualToString:@"/Popup"];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (PDFRenderingProperties)renderingProperties
{
  document = [(PDFPage *)self document];
  v3 = document;
  if (document)
  {
    renderingProperties = [document renderingProperties];
  }

  else
  {
    if (dyld_program_sdk_at_least() && (renderingProperties_sDidWarn & 1) == 0)
    {
      NSLog(&cfstr_DrawingAPdfpag.isa);
      renderingProperties_sDidWarn = 1;
    }

    renderingProperties = objc_opt_new();
  }

  v5 = renderingProperties;

  return v5;
}

- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context isThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  v14[4] = *MEMORY[0x1E69E9840];
  v9 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  v13[0] = @"PDFPageDrawWithBoxOption_WithRotation";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:!v9];
  v14[0] = v10;
  v13[1] = @"PDFPageDrawWithBoxOption_IsThumbnail";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:thumbnailCopy];
  v14[1] = v11;
  v14[2] = MEMORY[0x1E695E118];
  v13[2] = @"PDFPageDrawWithBoxOption_DrawAnnotations";
  v13[3] = @"PDFPageDrawWithBoxOption_DrawBookmark";
  v14[3] = MEMORY[0x1E695E110];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  [(PDFPage *)self drawWithBox:box inContext:context withOptions:v12];
}

- (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withOptions:(id)options
{
  optionsCopy = options;
  v8 = [objc_opt_class() _getBooleanProperty:optionsCopy forKey:@"PDFPageDrawWithBoxOption_WithRotation" withDefault:0];
  v9 = [objc_opt_class() _getBooleanProperty:optionsCopy forKey:@"PDFPageDrawWithBoxOption_IsThumbnail" withDefault:0];
  v28 = [objc_opt_class() _getBooleanProperty:optionsCopy forKey:@"PDFPageDrawWithBoxOption_DrawAnnotations" withDefault:0];
  v27 = [objc_opt_class() _getBooleanProperty:optionsCopy forKey:@"PDFPageDrawWithBoxOption_DrawBookmark" withDefault:0];
  [objc_opt_class() _getBooleanProperty:optionsCopy forKey:@"PDFPageDrawWithBoxOption_RenderExtraContentStream" withDefault:0];
  v10 = [optionsCopy objectForKeyedSubscript:@"PDFPageDrawWithBoxOption_DrawProgressCallback"];
  v11 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:v8 ^ 1u];
  copyDisplayList = [(PDFPage *)self copyDisplayList];
  if (copyDisplayList)
  {
    v13 = copyDisplayList;
    CGDisplayListDrawInContext();
    CFRelease(v13);
  }

  else if (self->_page)
  {
    os_unfair_lock_lock(&self->_pageLock);
    CGContextSaveGState(context);
    memset(&v38, 0, sizeof(v38));
    [(PDFPage *)self getDrawingTransformForBox:box];
    transform = v38;
    CGContextConcatCTM(context, &transform);
    renderingProperties = [(PDFPage *)self renderingProperties];
    v25 = renderingProperties;
    if (CGContextGetType() == 1)
    {
      bOOLValue = 0;
    }

    else
    {
      bOOLValue = CGContextGetProperty() != 0;
      v16 = [optionsCopy objectForKeyedSubscript:@"PDFPageImageProperty_DarkModeRendering"];
      v17 = v16;
      if (v16)
      {
        bOOLValue = [v16 BOOLValue];
      }

      renderingProperties = v25;
    }

    shouldAntiAlias = [renderingProperties shouldAntiAlias];
    CGContextSetAllowsAntialiasing(context, shouldAntiAlias);
    CGContextSetShouldAntialias(context, shouldAntiAlias);
    [v25 greekingThreshold];
    CGContextSetTextGreekingThreshold();
    if ((v9 & 1) == 0)
    {
      [v25 lineWidthThreshold];
    }

    CGContextSetLineWidthThreshold();
    interpolationQuality = [v25 interpolationQuality];
    if (interpolationQuality < 3)
    {
      v20 = interpolationQuality + 1;
    }

    else
    {
      v20 = kCGInterpolationDefault;
    }

    CGContextSetInterpolationQuality(context, v20);
    v39.origin.x = PDFRectToCGRect([(PDFPage *)self boundsForBox:box]);
    CGContextClipToRect(context, v39);
    v21 = objc_opt_new();
    if (bOOLValue)
    {
      v36 = 0u;
      v37 = 0u;
      memset(&transform, 0, sizeof(transform));
      +[PDFRenderingProperties smartInvertCGMatrixFilter];
      v32 = transform;
      v33 = v36;
      v34 = v37;
      v22 = [MEMORY[0x1E696B098] valueWithCGMatrixFilter:&v32];
      [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x1E695F230]];
    }

    transform.a = 0.0;
    *&transform.b = &transform;
    *&transform.c = 0x2020000000;
    transform.d = 0.0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__PDFPage_drawWithBox_inContext_withOptions___block_invoke;
    aBlock[3] = &unk_1E8152340;
    p_transform = &transform;
    v30 = v10;
    v23 = _Block_copy(aBlock);
    v24 = [v23 copy];
    [v21 setObject:v24 forKeyedSubscript:*MEMORY[0x1E695F238]];

    if (GetDefaultsWriteDrawInvisibleText())
    {
      CGPDFPageSetProperty();
    }

    if (CGContextGetType() == 1)
    {
      CGPDFPageSetProperty();
    }

    CGContextDrawPDFPageWithOptions();
    if (*(*&transform.b + 24) >= 251)
    {
      [(PDFPage *)self getDisplayListWithCompletion:0 onQueue:0];
    }

    if (CGContextGetType() == 1)
    {
      CGPDFPageRemoveProperty();
    }

    if (GetDefaultsWriteDrawInvisibleText())
    {
      CGPDFPageRemoveProperty();
    }

    if (!self->_pageBackgroundColorHint)
    {
      self->_pageBackgroundColorHint = CGPDFPageCopyBackgroundColorHint();
    }

    CGContextRestoreGState(context);
    os_unfair_lock_unlock(&self->_pageLock);

    _Block_object_dispose(&transform, 8);
  }

  if (([(PDFPage *)self displaysAnnotations]& v28) == 1)
  {
    [(PDFPage *)self _drawAnnotationsWithBox:box inContext:context];
  }

  if (v27)
  {
    [(PDFPage *)self _drawBookmarkInContext:context];
  }

  [PDFPage setNativeRotationDrawingEnabledForThisThread:v11];
}

uint64_t __45__PDFPage_drawWithBox_inContext_withOptions___block_invoke(uint64_t a1)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v1 = *(a1 + 32);
  if (v1)
  {
    return [v1 drawProgressCallback];
  }

  else
  {
    return 1;
  }
}

- (void)_drawBookmarkInContext:(CGContext *)context
{
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  CGContextSetRGBFillColor(context, 0.92, 0.19, 0.21, 1.0);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, 21.0);
  CGPathAddLineToPoint(Mutable, 0, 6.5, 16.0);
  CGPathAddLineToPoint(Mutable, 0, 13.0, 21.0);
  CGPathAddLineToPoint(Mutable, 0, 13.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, 0.0);
  CGPathCloseSubpath(Mutable);
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v12.a = *MEMORY[0x1E695EFD0];
  *&v12.c = v7;
  *&v12.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v11.a = *&v12.a;
  *&v11.c = v7;
  *&v11.tx = *&v12.tx;
  CGAffineTransformTranslate(&v12, &v11, Width + 425.0, Height + 555.0);
  v10 = v12;
  CGAffineTransformTranslate(&v11, &v10, 52.0, 84.0);
  v12 = v11;
  v10 = v11;
  CGAffineTransformScale(&v11, &v10, 8.0, 8.0);
  v12 = v11;
  v8 = PDFDegToRad(180.0);
  v10 = v12;
  CGAffineTransformRotate(&v11, &v10, v8);
  v12 = v11;
  v10 = v11;
  CGAffineTransformTranslate(&v11, &v10, -6.5, -10.5);
  v12 = v11;
  v9 = MEMORY[0x1C690CAA0](Mutable, &v12);
  CGContextAddPath(context, v9);
  CGContextFillPath(context);
  CGPathRelease(Mutable);
  CGPathRelease(v9);
}

- (UIImage)thumbnailOfSize:(CGSize)size forBox:(PDFDisplayBox)box
{
  height = size.height;
  width = size.width;
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"PDFPageImageProperty_DrawBookmark";
  v11[1] = @"PDFPageImageProperty_DrawAnnotations";
  v12[0] = MEMORY[0x1E695E110];
  v12[1] = MEMORY[0x1E695E118];
  v11[2] = @"PDFPageImageProperty_WithRotation";
  v12[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  height = [(PDFPage *)self imageOfSize:box forBox:v8 withOptions:width, height];

  return height;
}

- (id)thumbnailOfSize:(CGSize)size forBox:(int64_t)box withBookmark:(BOOL)bookmark withAnnotations:(BOOL)annotations
{
  annotationsCopy = annotations;
  height = size.height;
  width = size.width;
  v17[3] = *MEMORY[0x1E69E9840];
  v16[0] = @"PDFPageImageProperty_DrawBookmark";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:bookmark];
  v17[0] = v11;
  v16[1] = @"PDFPageImageProperty_DrawAnnotations";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:annotationsCopy];
  v16[2] = @"PDFPageImageProperty_WithRotation";
  v17[1] = v12;
  v17[2] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  height = [(PDFPage *)self imageOfSize:box forBox:v13 withOptions:width, height];

  return height;
}

+ (BOOL)_getBooleanProperty:(id)property forKey:(id)key withDefault:(BOOL)default
{
  v6 = [property valueForKey:key];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      default = [v6 BOOLValue];
    }
  }

  return default;
}

- (id)imageOfSize:(CGSize)size forBox:(int64_t)box withOptions:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  v10 = [optionsCopy valueForKey:@"PDFPageImageProperty_ColorSpace"];
  v11 = [optionsCopy valueForKey:@"PDFPageImageProperty_BackgroundColor"];
  v32 = [PDFPage _getBooleanProperty:optionsCopy forKey:@"PDFPageImageProperty_DrawBookmark" withDefault:0];
  v31 = [PDFPage _getBooleanProperty:optionsCopy forKey:@"PDFPageImageProperty_DrawAnnotations" withDefault:0];
  v12 = [PDFPage _getBooleanProperty:optionsCopy forKey:@"PDFPageImageProperty_WithRotation" withDefault:0];
  v13 = [optionsCopy objectForKey:@"PDFPageImageProperty_DrawProgressCallback"];
  if (!self->_page || (Thumbnail = CGPDFPageGetThumbnail()) == 0 || ((v15 = Thumbnail, v16 = CGPDFPageContainsWideGamutContent(), !v10) ? (v17 = 0) : (CGImageGetColorSpace(v15), v17 = CGColorSpaceEqualToColorSpace() ^ 1), v16 != PDFKitCGImageIsWideGamut(v15) || (v17 & 1) != 0 || width >= CGImageGetWidth(v15) || height >= CGImageGetHeight(v15) || (v18 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v15]) == 0))
  {
    [(PDFPage *)self boundsForBox:box];
    v22 = v21;
    v24 = v23;
    if (v12)
    {
      PDFRectRotate([(PDFPage *)self rotation], v19, v20);
      v22 = v25;
      v24 = v26;
    }

    v27 = width / v22;
    if (v24 * (width / v22) > height)
    {
      v27 = height / v24;
    }

    BYTE2(v30) = v32;
    BYTE1(v30) = v31;
    LOBYTE(v30) = 1;
    v28 = [(PDFPage *)self _newCGImageWithBox:box bitmapSize:vcvtmd_u64_f64(v22 * v27) scale:vcvtmd_u64_f64(v24 * v27) offset:v10 colorSpace:v11 backgroundColor:v12 withRotation:v27 withAntialiasing:*MEMORY[0x1E695EFF8] withAnnotations:*(MEMORY[0x1E695EFF8] + 8) withBookmark:v30 withOptions:optionsCopy withDelegate:v13];
    v18 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v28];
    CGImageRelease(v28);
  }

  return v18;
}

- (CGImage)_newCGImageWithBox:(int64_t)box bitmapSize:(PDFSizeIntegral)size scale:(double)scale offset:(CGPoint)offset colorSpace:(CGColorSpace *)space backgroundColor:(id)color withRotation:(BOOL)rotation withAntialiasing:(BOOL)self0 withAnnotations:(BOOL)self1 withBookmark:(BOOL)self2 withOptions:(id)self3 withDelegate:(id)self4
{
  rotationCopy = rotation;
  y = offset.y;
  x = offset.x;
  var1 = size.var1;
  var0 = size.var0;
  colorCopy = color;
  optionsCopy = options;
  delegateCopy = delegate;
  if (space)
  {
    CFRetain(space);
  }

  else
  {
    if (CGPDFPageContainsWideGamutContent())
    {
      DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    space = DeviceRGB;
    if (!DeviceRGB)
    {
      Image = 0;
      goto LABEL_25;
    }
  }

  if (CGColorSpaceGetModel(space))
  {
    v27 = 8194;
  }

  else
  {
    v27 = 0;
  }

  v28 = CGBitmapContextCreate(0, var0, var1, 8uLL, 0, space, v27);
  if (v28)
  {
    v29 = v28;
    boxCopy = box;
    CGContextSaveGState(v28);
    if (colorCopy && [colorCopy CGColor])
    {
      CGContextSetFillColorWithColor(v29, [colorCopy CGColor]);
    }

    else
    {
      if ([PDFPage _getBooleanProperty:optionsCopy forKey:@"PDFPageImageProperty_DarkModeRendering" withDefault:0, box])
      {
        v30 = 0.0;
        v31 = 0.0;
        v32 = 0.0;
      }

      else
      {
        v30 = 1.0;
        v31 = 1.0;
        v32 = 1.0;
      }

      CGContextSetRGBFillColor(v29, v30, v31, v32, 1.0);
    }

    v40.size.width = var0;
    v40.size.height = var1;
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    CGContextFillRect(v29, v40);
    CGContextTranslateCTM(v29, x, y);
    CGContextScaleCTM(v29, scale, scale);
    v34 = [optionsCopy mutableCopy];
    v35 = [MEMORY[0x1E696AD98] numberWithBool:rotationCopy];
    [v34 setObject:v35 forKeyedSubscript:@"PDFPageDrawWithBoxOption_WithRotation"];

    [v34 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PDFPageDrawWithBoxOption_IsThumbnail"];
    v36 = [MEMORY[0x1E696AD98] numberWithBool:annotations];
    [v34 setObject:v36 forKeyedSubscript:@"PDFPageDrawWithBoxOption_DrawAnnotations"];

    v37 = [MEMORY[0x1E696AD98] numberWithBool:bookmark];
    [v34 setObject:v37 forKeyedSubscript:@"PDFPageDrawWithBoxOption_DrawBookmark"];

    [(PDFPage *)self drawWithBox:boxCopy inContext:v29 withOptions:v34];
    if (GetDefaultsWriteAKEnabled() && [(PDFPage *)self displaysAnnotations]&& annotations)
    {
      [(PDFPage *)self _drawAnnotationsWithBox:boxCopy inContext:v29];
    }

    CGContextRestoreGState(v29);
    Image = CGBitmapContextCreateImage(v29);
    CGContextRelease(v29);
  }

  else
  {
    Image = 0;
  }

  CGColorSpaceRelease(space);
LABEL_25:

  return Image;
}

- (CGRect)columnFrameAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(PDFPage *)self document];
  if ([(PDFPage *)self pageLayout])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x4010000000;
    v21 = &unk_1C1D88347;
    v22 = 0u;
    v23 = 0u;
    v7 = dispatch_semaphore_create(0);
    PDFPointToCGPoint(x, y);
    textExtractionQueue = [document textExtractionQueue];
    v17 = v7;
    CGPDFPageLayoutGetColumnBoundsAtPointWithCompletion();

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    CGRectIsNull(v19[1]);

    _Block_object_dispose(&v18, 8);
  }

  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

intptr_t __30__PDFPage_columnFrameAtPoint___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 40) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)transformContext:(CGContextRef)context forBox:(PDFDisplayBox)box
{
  CurrentContext = context;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v9.a = *MEMORY[0x1E695EFD0];
  *&v9.c = v7;
  *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (context || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
  {
    [(PDFPage *)self getDrawingTransformForBox:box];
    v8 = v9;
    CGContextConcatCTM(CurrentContext, &v8);
  }
}

- (NSUInteger)numberOfCharacters
{
  document = [(PDFPage *)self document];
  if ([document isLocked])
  {
    v4 = 0;
  }

  else
  {
    string = [(PDFPage *)self string];
    v6 = string;
    if (string)
    {
      v4 = [string length];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)string
{
  document = [(PDFPage *)self document];
  if ([document isLocked])
  {
    v4 = 0;
  }

  else
  {
    [(PDFPage *)self pageRef];
    v4 = CGPDFPageCopyString();
  }

  return v4;
}

- (NSAttributedString)attributedString
{
  document = [(PDFPage *)self document];
  isLocked = [document isLocked];

  if (isLocked)
  {
    v5 = 0;
  }

  else
  {
    attributedString = self->_attributedString;
    if (!attributedString)
    {
      _createAttributedString = [(PDFPage *)self _createAttributedString];
      v8 = self->_attributedString;
      self->_attributedString = _createAttributedString;

      attributedString = self->_attributedString;
    }

    v5 = attributedString;
  }

  return v5;
}

- (CGRect)characterBoundsAtIndex:(NSInteger)index
{
  document = [(PDFPage *)self document];
  *v16 = *MEMORY[0x1E696AA80];
  *&v16[16] = *(MEMORY[0x1E696AA80] + 16);
  if ([document isLocked])
  {
    v6 = *&v16[8];
    v5 = *v16;
    v8 = *&v16[24];
    v7 = *&v16[16];
  }

  else
  {
    [(PDFPage *)self pageLayout];
    CGPDFPageLayoutGetCharacterSelectionBoundingBox();
    if (CGRectIsNull(*v16))
    {
      v5 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      v7 = *(MEMORY[0x1E695F058] + 16);
      v8 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v5 = PDFRectFromCGRect(*v16, *&v16[8], *&v16[16], *&v16[24]);
      v6 = v9;
      v7 = v10;
      v8 = v11;
    }
  }

  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (NSInteger)characterIndexAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(PDFPage *)self document];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (([document isLocked] & 1) == 0)
  {
    [(PDFPage *)self pageLayout];
    PDFPointToCGPoint(x, y);
    TextRangeIndexAtPoint = CGPDFPageLayoutGetTextRangeIndexAtPoint();
    if (TextRangeIndexAtPoint != -1)
    {
      v7 = TextRangeIndexAtPoint;
    }
  }

  return v7;
}

- (int64_t)characterIndexNearestPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  document = [(PDFPage *)self document];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (([document isLocked] & 1) == 0)
  {
    [(PDFPage *)self pageLayout];
    PDFPointToCGPoint(x, y);
    StringRangeIndexNearestPoint = CGPDFPageLayoutGetStringRangeIndexNearestPoint();
    if (StringRangeIndexNearestPoint != -1)
    {
      v7 = StringRangeIndexNearestPoint;
    }
  }

  return v7;
}

- (PDFSelection)selectionForRect:(CGRect)rect
{
  v4 = [PDFSelection alloc];
  document = [(PDFPage *)self document];
  v6 = [(PDFSelection *)v4 initWithDocument:document];

  v7 = CGPDFSelectionCreateInRect();
  if (v7)
  {
    [(PDFSelection *)v6 addCGSelection:v7 forPage:self];
    CGPDFSelectionRelease();
  }

  [(PDFSelection *)v6 setForceBreaks:1];

  return v6;
}

- (id)selectionForTableRect:(CGRect)rect
{
  v4 = [PDFSelection alloc];
  document = [(PDFPage *)self document];
  v6 = [(PDFSelection *)v4 initWithDocument:document];

  PDFRectToCGRect(v7);
  v8 = CGPDFSelectionCreateForTable();
  if (v8)
  {
    [(PDFSelection *)v6 addCGSelection:v8 forPage:self];
    CGPDFSelectionRelease();
  }

  [(PDFSelection *)v6 setForceBreaks:1];

  return v6;
}

- (id)tableSelectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  v5 = [PDFSelection alloc];
  document = [(PDFPage *)self document];
  v7 = [(PDFSelection *)v5 initWithDocument:document];

  BetweenPointsWithOptions = CGPDFSelectionCreateBetweenPointsWithOptions();
  if (BetweenPointsWithOptions)
  {
    [(PDFSelection *)v7 addCGSelection:BetweenPointsWithOptions forPage:self];
    CGPDFSelectionRelease();
  }

  [(PDFSelection *)v7 setForceBreaks:1];

  return v7;
}

- (id)selectionForCharacterAtPoint:(CGPoint)point
{
  PDFPointToCGPoint(point.x, point.y);
  v4 = CGPDFSelectionCreateAtPointWithOptions();
  if (v4)
  {
    v5 = v4;
    v6 = [PDFSelection alloc];
    document = [(PDFPage *)self document];
    v8 = [(PDFSelection *)v6 initWithDocument:document];

    [(PDFSelection *)v8 addCGSelection:v5 forPage:self];
    CGPDFSelectionRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PDFSelection)selectionForWordAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(PDFPage *)self rvItemAtPoint:?];
  v7 = v6;
  if (v6)
  {
    clientHints = [v6 clientHints];
    v9 = [clientHints objectForKey:@"selection"];
  }

  else
  {
    v9 = [(PDFPage *)self selectionFromPoint:1 toPoint:x type:y, x, y];
  }

  return v9;
}

- (NSData)dataRepresentation
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  if (Mutable)
  {
    v5 = CGDataConsumerCreateWithCFData(Mutable);
    v6 = [(PDFPage *)self _writeToConsumer:v5];
    if (v5)
    {
      CGDataConsumerRelease(v5);
    }

    if (!v6)
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  return v4;
}

- (void)_commonInit
{
  objc_storeWeak(&self->_document, 0);
  self->_page = 0;
  self->_pageLock._os_unfair_lock_opaque = 0;
  self->_layoutLock._os_unfair_lock_opaque = 0;
  self->_layout = 0;
  self->_builtLayout = 0;
  self->_dataDetectorsLock._os_unfair_lock_opaque = 0;
  self->_ranDataDetectors = 0;
  text = self->_text;
  self->_text = 0;

  attributedString = self->_attributedString;
  self->_attributedString = 0;

  self->_loadedAnnotations = 0;
  annotations = self->_annotations;
  self->_annotations = 0;

  *&self->_displaysAnnotations = 257;
  v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
  lock_getAnnotations = self->_lock_getAnnotations;
  self->_lock_getAnnotations = v6;

  v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
  lock_accessAnnotations = self->_lock_accessAnnotations;
  self->_lock_accessAnnotations = v8;

  detectedAnnotations = self->_detectedAnnotations;
  self->_detectedAnnotations = 0;

  self->_rotation = 0;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 16);
  self->_mediaBox.origin = *MEMORY[0x1E695F058];
  self->_mediaBox.size = v12;
  self->_cropBox.origin = v11;
  self->_cropBox.size = v12;
  self->_bleedBox.origin = v11;
  self->_bleedBox.size = v12;
  self->_trimBox.origin = v11;
  self->_trimBox.size = v12;
  self->_artBox.origin = v11;
  self->_artBox.size = v12;
  self->_displayList = 0;
  self->_creatingDisplayList = 0;
  v13 = objc_opt_new();
  createDisplayListCompletionBlocks = self->_createDisplayListCompletionBlocks;
  self->_createDisplayListCompletionBlocks = v13;

  self->_akDidSetupRealPageModelController = 0;
  self->_displayListMutex._os_unfair_lock_opaque = 0;
  *(&self->_displayListMutex._os_unfair_lock_opaque + 3) = 0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  annotationChanges = self->_annotationChanges;
  self->_annotationChanges = v15;

  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  changedAnnotations = self->_changedAnnotations;
  self->_changedAnnotations = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  widgetAnnotationLookup = self->_widgetAnnotationLookup;
  self->_widgetAnnotationLookup = v19;

  self->_widgetAnnotationLookupLock._os_unfair_lock_opaque = 0;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  scannerResults = self->_scannerResults;
  self->_scannerResults = v21;

  self->_candidateForOCR = 2;
  self->_candidateForFormDetection = 1;
}

- (id)_createAttributedString
{
  selectionForAll = [(PDFPage *)self selectionForAll];
  attributedString = [selectionForAll attributedString];

  return attributedString;
}

+ (CGPDFPage)_createPageRefFromImage:(CGImage *)image andOptions:(id)options
{
  optionsCopy = options;
  if (!image)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: image must not be NULL", "+[PDFPage _createPageRefFromImage:andOptions:]"}];
  }

  v6 = [optionsCopy objectForKeyedSubscript:@"PDFPageImageInitializationOptionRotation"];
  v7 = v6;
  if (v6)
  {
    intValue = [v6 intValue];
    HIDWORD(v9) = -1527099483 * intValue + 47721858;
    LODWORD(v9) = HIDWORD(v9);
    if ((v9 >> 1) >= 0x2D82D83)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: PDFPageImageInitializationOptionRotation must be a multiple of 90", "+[PDFPage _createPageRefFromImage:andOptions:]"}];
    }
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"PDFPageImageInitializationOptionMediaBox"];
  v11 = v10;
  if (v10)
  {
    [v10 PDFKitPDFRectValue];
  }

  else
  {
    CGImageGetSizeAfterOrientation();
  }

  v12 = [optionsCopy mutableCopy];
  v13 = [optionsCopy objectForKeyedSubscript:@"PDFPageImageInitializationOptionUpscaleIfSmaller"];

  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
    v15 = MEMORY[0x1E695E4D0];
    if (!bOOLValue)
    {
      v15 = MEMORY[0x1E695E4C0];
    }

    [v12 setObject:*v15 forKeyedSubscript:*MEMORY[0x1E695F420]];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"PDFPageImageInitializationOptionCompressionQuality"];

  if (v16)
  {
    [v16 doubleValue];
    v18 = v17;
    if (v17 < 0.0 || v17 > 1.0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: PDFPageImageInitializationOptionCompressionQuality must be between 0.0 and 1.0", "+[PDFPage _createPageRefFromImage:andOptions:]"}];
    }

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    [v12 setObject:v19 forKeyedSubscript:*MEMORY[0x1E695F380]];
  }

  v20 = v12;

  v21 = CGPDFPageCreateWithImage();
  if (!v21)
  {
    NSLog(&cfstr_Cgpdfpagecreat.isa, image);
  }

  return v21;
}

- (id)selectionForRangeCommon:(_NSRange)common isCodeRange:(BOOL)range
{
  if (common.length)
  {
    rangeCopy = range;
    [(PDFPage *)self numberOfCharacters];
    v6 = [PDFSelection alloc];
    document = [(PDFPage *)self document];
    v8 = [(PDFSelection *)v6 initWithDocument:document];

    if (v8)
    {
      v9 = rangeCopy ? CGPDFSelectionCreateForRange() : CGPDFSelectionCreateForStringRange();
      if (v9)
      {
        [(PDFSelection *)v8 addCGSelection:v9 forPage:self];
        CGPDFSelectionRelease();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fontWithPDFFont:(CGPDFFont *)font size:(float)size
{
  v26[1] = *MEMORY[0x1E69E9840];
  Font = CGPDFFontGetFont();
  v6 = CGFontCopyPostScriptName(Font);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = *MEMORY[0x1E6965808];
  v25 = *MEMORY[0x1E6965808];
  v26[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v10 = CTFontDescriptorCreateWithAttributesAndOptions();

  if (v10)
  {
    MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v10, 0);
    CFRelease(v10);
    if (!MatchingFontDescriptor || ([MEMORY[0x1E69DB878] fontWithDescriptor:MatchingFontDescriptor size:size], v10 = objc_claimAutoreleasedReturnValue(), MatchingFontDescriptor, !v10))
    {
      if ([v7 length] >= 8 && objc_msgSend(v7, "characterAtIndex:", 6) == 43)
      {
        v12 = [v7 substringFromIndex:7];

        v23 = v8;
        v24 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v10 = CTFontDescriptorCreateWithAttributesAndOptions();

        if (!v10 || (v14 = CTFontDescriptorCreateMatchingFontDescriptor(v10, 0), CFRelease(v10), v14) && ([MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:size], v10 = objc_claimAutoreleasedReturnValue(), v14, v10))
        {
          v7 = v12;
          goto LABEL_33;
        }

        v7 = v12;
      }

      if ([v7 isEqualToString:{@"Arial, Bold"}])
      {
        v15 = @"Arial-BoldMT";
      }

      else if ([v7 isEqualToString:{@"Arial, BoldItalic"}])
      {
        v15 = @"Arial-BoldItalicMT";
      }

      else if ([v7 isEqualToString:{@"Arial, Italic"}])
      {
        v15 = @"Arial-ItalicMT";
      }

      else if ([v7 isEqualToString:@"Helvetica-Black"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"Helvetica-Narrow-Bold"))
      {
        v15 = @"Helvetica-Bold";
      }

      else if ([v7 isEqualToString:@"HelveticaNeue-Black"])
      {
        v15 = @"HelveticaNeue-Bold";
      }

      else if ([v7 isEqualToString:@"TimesNewRoman"])
      {
        v15 = @"TimesNewRomanPSMT";
      }

      else if ([v7 isEqualToString:{@"TimesNewRoman, Bold"}])
      {
        v15 = @"TimesNewRomanPS-BoldMT";
      }

      else if ([v7 isEqualToString:{@"TimesNewRoman, BoldItalic"}])
      {
        v15 = @"TimesNewRomanPS-BoldItalicMT";
      }

      else if ([v7 isEqualToString:{@"TimesNewRoman, Italic"}])
      {
        v15 = @"TimesNewRomanPS-ItalicMT";
      }

      else
      {
        if (![v7 isEqualToString:@"ZapfDingbats"])
        {
          goto LABEL_23;
        }

        v15 = @"ZapfDingbatsITC";
      }

      v16 = [MEMORY[0x1E69DB878] fontWithName:v15 size:size];
      if (v16)
      {
LABEL_32:
        v10 = v16;
        goto LABEL_33;
      }

LABEL_23:
      CGPDFFontGetFontDescriptor();
      Flags = CGPDFFontDescriptorGetFlags();
      v18 = @"Courier";
      sizeCopy = size;
      if ((Flags & 1) == 0)
      {
        v18 = @"Times";
      }

      v20 = @"Helvetica";
      if (Flags)
      {
        v20 = @"Monaco";
      }

      if ((Flags & 2) != 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      v16 = [MEMORY[0x1E69DB878] fontWithName:v21 size:sizeCopy];
      if (!v16)
      {
        v16 = [MEMORY[0x1E69DB878] fontWithName:@"Times" size:sizeCopy];
      }

      goto LABEL_32;
    }
  }

LABEL_33:

LABEL_34:

  return v10;
}

- (id)selectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint type:(int)type
{
  y = toPoint.y;
  x = toPoint.x;
  PDFPointToCGPoint(point.x, point.y);
  PDFPointToCGPoint(x, y);
  document = [(PDFPage *)self document];
  if (![(PDFPage *)self pageLayout])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [[PDFSelection alloc] initWithDocument:document];
  if (v9)
  {
    BetweenPointsWithOptions = CGPDFSelectionCreateBetweenPointsWithOptions();
    if (BetweenPointsWithOptions)
    {
      v11 = BetweenPointsWithOptions;
      CGPDFSelectionGetBounds();
      if (v12 != 0.0)
      {
        [(PDFSelection *)v9 addCGSelection:v11 forPage:self];
        CGPDFSelectionRelease();
        goto LABEL_8;
      }

      CGPDFSelectionRelease();

      goto LABEL_7;
    }
  }

LABEL_8:

  return v9;
}

- (id)selectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint type:(int)type withClampedRange:(id)range withCellRect:(CGRect)rect
{
  y = toPoint.y;
  x = toPoint.x;
  PDFPointToCGPoint(point.x, point.y);
  PDFPointToCGPoint(x, y);
  document = [(PDFPage *)self document];
  if (![(PDFPage *)self pageLayout])
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = [[PDFSelection alloc] initWithDocument:document];
  if (v11)
  {
    BetweenPointsWithOptionsAndClampedRange = CGPDFSelectionCreateBetweenPointsWithOptionsAndClampedRange();
    if (BetweenPointsWithOptionsAndClampedRange)
    {
      v13 = BetweenPointsWithOptionsAndClampedRange;
      CGPDFSelectionGetBounds();
      if (v14 != 0.0)
      {
        [(PDFSelection *)v11 addCGSelection:v13 forPage:self];
        CGPDFSelectionRelease();
        goto LABEL_8;
      }

      CGPDFSelectionRelease();

      goto LABEL_7;
    }
  }

LABEL_8:

  return v11;
}

- (id)selectionForAll
{
  v3 = [PDFSelection alloc];
  document = [(PDFPage *)self document];
  v5 = [(PDFSelection *)v3 initWithDocument:document];

  if (v5)
  {
    if ([(PDFPage *)self numberOfCharacters])
    {
      v6 = CGPDFSelectionCreateForStringRange();
      if (v6)
      {
        [(PDFSelection *)v5 addCGSelection:v6 forPage:self];
        CGPDFSelectionRelease();
      }
    }

    v7 = v5;
  }

  return v5;
}

- (id)selectionFromTopToPoint:(CGPoint)point type:(int)type
{
  v4 = *&type;
  v6 = PDFPointToCGPoint(point.x, point.y);
  v8 = v7;
  document = [(PDFPage *)self document];
  if ([(PDFPage *)self pageLayout])
  {
    v10 = [[PDFSelection alloc] initWithDocument:document];
    if (v10)
    {
      v11 = MEMORY[0x1C690C840](self->_page, v4, v6, v8, 20.0);
      if (v11)
      {
        [(PDFSelection *)v10 addCGSelection:v11 forPage:self];
        CGPDFSelectionRelease();
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)selectionFromPointToBottom:(CGPoint)bottom type:(int)type
{
  v4 = *&type;
  v6 = PDFPointToCGPoint(bottom.x, bottom.y);
  v8 = v7;
  document = [(PDFPage *)self document];
  if ([(PDFPage *)self pageLayout])
  {
    v10 = [[PDFSelection alloc] initWithDocument:document];
    if (v10)
    {
      v11 = MEMORY[0x1C690C7F0](self->_page, v4, v6, v8, 20.0);
      if (v11)
      {
        [(PDFSelection *)v10 addCGSelection:v11 forPage:self];
        CGPDFSelectionRelease();
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addBox:(int)box toDictionary:(__CFDictionary *)dictionary offset:(CGPoint)offset
{
  if (dictionary && box <= 4)
  {
    v18[4] = v8;
    v18[5] = v7;
    v18[10] = v5;
    v18[11] = v6;
    v9 = **(&unk_1E8152438 + box);
    if (v9)
    {
      y = offset.y;
      x = offset.x;
      v13 = PDFRectToCGRect([(PDFPage *)self boundsForBox:box]);
      v18[2] = v14;
      v18[3] = v15;
      v18[0] = v13 - x;
      v18[1] = v16 - y;
      v17 = CFDataCreate(*MEMORY[0x1E695E480], v18, 32);
      CFDictionaryAddValue(dictionary, v9, v17);
      CFRelease(v17);
    }
  }
}

- (BOOL)hasCropBox
{
  [(PDFPage *)self boundsForBox:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFPage *)self boundsForBox:0];
  v17.origin.x = v11;
  v17.origin.y = v12;
  v17.size.width = v13;
  v17.size.height = v14;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (NSEqualRects(v16, v17))
  {
    return 0;
  }

  if (v10 > 0.0)
  {
    return v8 > 0.0;
  }

  return 0;
}

- (BOOL)hasBleedBox
{
  [(PDFPage *)self boundsForBox:2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFPage *)self boundsForBox:1];
  v17.origin.x = v11;
  v17.origin.y = v12;
  v17.size.width = v13;
  v17.size.height = v14;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (NSEqualRects(v16, v17))
  {
    return 0;
  }

  if (v10 > 0.0)
  {
    return v8 > 0.0;
  }

  return 0;
}

- (BOOL)hasTrimBox
{
  [(PDFPage *)self boundsForBox:3];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFPage *)self boundsForBox:1];
  v17.origin.x = v11;
  v17.origin.y = v12;
  v17.size.width = v13;
  v17.size.height = v14;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (NSEqualRects(v16, v17))
  {
    return 0;
  }

  if (v10 > 0.0)
  {
    return v8 > 0.0;
  }

  return 0;
}

- (BOOL)hasArtBox
{
  [(PDFPage *)self boundsForBox:4];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFPage *)self boundsForBox:1];
  v17.origin.x = v11;
  v17.origin.y = v12;
  v17.size.width = v13;
  v17.size.height = v14;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (NSEqualRects(v16, v17))
  {
    return 0;
  }

  if (v10 > 0.0)
  {
    return v8 > 0.0;
  }

  return 0;
}

- (CGDisplayList)copyDisplayList
{
  os_unfair_lock_lock(&self->_displayListMutex);
  displayList = self->_displayList;
  CGDisplayListRetain();
  os_unfair_lock_unlock(&self->_displayListMutex);
  return displayList;
}

- (CGDisplayList)_createDisplayListTrackingGlyphs:(BOOL)glyphs
{
  if (!self->_page)
  {
    return 0;
  }

  renderingProperties = [(PDFPage *)self renderingProperties];
  -[PDFPage boundsForBox:](self, "boundsForBox:", [renderingProperties displayBox]);
  [(PDFPage *)self rotation];
  v5 = CGDisplayListCreateWithRect();
  if (v5)
  {
    v6 = CGDisplayListContextCreate();
    if (v6)
    {
      v7 = v6;
      -[PDFPage drawWithBox:inContext:](self, "drawWithBox:inContext:", [renderingProperties displayBox], v6);
      CGContextRelease(v7);
    }
  }

  return v5;
}

- (void)_createRetainedDisplayList
{
  if (self->_page)
  {
    v3 = [(PDFPage *)self _createDisplayListTrackingGlyphs:0];
    if (v3)
    {
      v4 = v3;
      os_unfair_lock_lock(&self->_displayListMutex);
      self->_displayList = v4;
      self->_creatingDisplayList = 0;
      v5 = [(NSMutableArray *)self->_createDisplayListCompletionBlocks copy];
      [(NSMutableArray *)self->_createDisplayListCompletionBlocks removeAllObjects];
      os_unfair_lock_unlock(&self->_displayListMutex);
      [v5 enumerateObjectsWithOptions:0 usingBlock:&__block_literal_global_317];
    }
  }
}

void __37__PDFPage__createRetainedDisplayList__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [v5 queue];

  if (v2)
  {
    v3 = [v5 queue];
    v4 = [v5 block];
    dispatch_async(v3, v4);
  }

  else
  {
    v3 = [v5 block];
    (*(v3 + 16))();
  }
}

- (void)_releaseDisplayList
{
  os_unfair_lock_lock(&self->_displayListMutex);
  displayList = self->_displayList;
  if (displayList)
  {
    CFRelease(displayList);
    self->_displayList = 0;
  }

  os_unfair_lock_unlock(&self->_displayListMutex);
}

- (void)ensureDisplayList
{
  if (!self->_displayList)
  {
    [(PDFPage *)self _createRetainedDisplayList];
  }
}

- (void)getDisplayListWithCompletion:(id)completion onQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = queueCopy;
  if (queueCopy)
  {
    v9 = queueCopy;
  }

  else
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  os_unfair_lock_lock(&self->_displayListMutex);
  if (!self->_displayList)
  {
    if (completionCopy)
    {
      v11 = [PDFBlockQueuePair blockQueuePairWithBlock:completionCopy andQueue:v8];
      v12 = v11;
      if (self->_creatingDisplayList)
      {
        if (v11)
        {
          [(NSMutableArray *)self->_createDisplayListCompletionBlocks addObject:v11];
        }

        goto LABEL_13;
      }

      self->_creatingDisplayList = 1;
      objc_initWeak(&location, self);
      if (v12)
      {
        [(NSMutableArray *)self->_createDisplayListCompletionBlocks addObject:v12];
      }
    }

    else
    {
      if (self->_creatingDisplayList)
      {
        v12 = 0;
LABEL_13:
        os_unfair_lock_unlock(&self->_displayListMutex);
LABEL_18:

        goto LABEL_19;
      }

      self->_creatingDisplayList = 1;
      objc_initWeak(&location, self);
      v12 = 0;
    }

    displayListCreationQueue = [objc_opt_class() displayListCreationQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PDFPage_getDisplayListWithCompletion_onQueue___block_invoke;
    v14[3] = &unk_1E8151400;
    objc_copyWeak(&v15, &location);
    dispatch_async(displayListCreationQueue, v14);

    os_unfair_lock_unlock(&self->_displayListMutex);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    goto LABEL_18;
  }

  os_unfair_lock_unlock(&self->_displayListMutex);
  if (completionCopy)
  {
    dispatch_async(v9, completionCopy);
  }

LABEL_19:
}

void __48__PDFPage_getDisplayListWithCompletion_onQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _createRetainedDisplayList];
}

- (BOOL)_writeToConsumer:(CGDataConsumer *)consumer
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
  v6 = CGPDFContextCreate(consumer, 0, 0);
  if (v6)
  {
    displaysAnnotations = [(PDFPage *)self displaysAnnotations];
    gcCreateBoxDictionary = [(PDFPage *)self gcCreateBoxDictionary];
    valuePtr = [(PDFPage *)self rotation];
    v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(gcCreateBoxDictionary, @"Rotate", v9);
    CGPDFContextBeginPage(v6, gcCreateBoxDictionary);
    [(PDFPage *)self setDisplaysAnnotations:0];
    [(PDFPage *)self drawWithBox:0 toContext:v6];
    [(PDFPage *)self setDisplaysAnnotations:displaysAnnotations];
    [(NSLock *)self->_lock_accessAnnotations lock];
    annotations = [(PDFPage *)self annotations];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [annotations countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(annotations);
          }

          if ([*(*(&v16 + 1) + 8 * v14) dictionaryRef])
          {
            CGPDFContextAddAnnotation();
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [annotations countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }

    [(NSLock *)self->_lock_accessAnnotations unlock];
    CGPDFContextEndPage(v6);
    CGPDFContextClose(v6);

    CGContextRelease(v6);
    if (gcCreateBoxDictionary)
    {
      CFRelease(gcCreateBoxDictionary);
    }
  }

  [PDFPage setNativeRotationDrawingEnabledForThisThread:v5];
  return v6 != 0;
}

- (__CFDictionary)gcCreateBoxDictionary
{
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(PDFPage *)self boundsForBox:0];
  v6 = v5;
  v8 = v7;
  [(PDFPage *)self _addBox:0 toDictionary:Mutable offset:?];
  v9 = self->_akPageAdaptor;
  if (v9)
  {
    v10 = v9;
    akPageModelController = [(PDFAKPageAdaptor *)v9 akPageModelController];
    cropAnnotation = [akPageModelController cropAnnotation];
    v13 = cropAnnotation;
    if (cropAnnotation)
    {
      if ([cropAnnotation cropApplied])
      {
        pageRef = [(PDFPage *)self pageRef];
        BoxRect = CGPDFPageGetBoxRect(pageRef, kCGPDFCropBox);
        v38 = CGRectIntegral(BoxRect);
        x = v38.origin.x;
        y = v38.origin.y;
        height = v38.size.height;
        width = v38.size.width;
        [v13 rectangle];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v42 = CGPDFPageGetBoxRect(pageRef, kCGPDFMediaBox);
        v39.origin.x = v18;
        v39.origin.y = v20;
        v39.size.width = v22;
        v39.size.height = v24;
        v40 = CGRectIntersection(v39, v42);
        v41 = CGRectIntegral(v40);
        v25 = v41.origin.x;
        v26 = v41.origin.y;
        v27 = v41.size.width;
        v28 = v41.size.height;
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.height = height;
        v41.size.width = width;
        v43.origin.x = v25;
        v43.origin.y = v26;
        v43.size.width = v27;
        v43.size.height = v28;
        if (!CGRectEqualToRect(v41, v43) && v27 > 0.0 && v28 > 0.0)
        {
          v35 = v27;
          v36 = v28;
          *bytes = v25 - v6;
          v34 = v26 - v8;
          v29 = CFDataCreate(v3, bytes, 32);
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F320], v29);
          CFRelease(v29);

          goto LABEL_11;
        }
      }
    }
  }

  if ([(PDFPage *)self hasCropBox])
  {
    [(PDFPage *)self _addBox:1 toDictionary:Mutable offset:v6, v8];
  }

LABEL_11:
  if ([(PDFPage *)self hasBleedBox])
  {
    [(PDFPage *)self _addBox:2 toDictionary:Mutable offset:v6, v8];
  }

  if ([(PDFPage *)self hasTrimBox])
  {
    [(PDFPage *)self _addBox:3 toDictionary:Mutable offset:v6, v8];
  }

  if ([(PDFPage *)self hasArtBox])
  {
    [(PDFPage *)self _addBox:4 toDictionary:Mutable offset:v6, v8];
  }

  return Mutable;
}

- (void)_buildPageLayout
{
  if (self->_page && !self->_layout && !self->_ranDataDetectors)
  {
    document = [(PDFPage *)self document];
    v3 = CGPDFPageCopyPageLayout();
    self->_layout = v3;
    if (v3)
    {
      atomic_store(1u, &self->_builtLayout);
    }

    [(PDFPage *)self _scanData:document];
  }
}

- (void)purgePageLayout
{
  if (self->_page)
  {
    p_builtLayout = &self->_builtLayout;
    v4 = atomic_load(&self->_builtLayout);
    if (v4)
    {
      os_unfair_lock_lock(&self->_layoutLock);
      os_unfair_lock_lock(&self->_dataDetectorsLock);
      CGPDFPageLayoutRelease();
      self->_layout = 0;
      [(PDFPage *)self pageRef];
      CGPDFPageRemoveLayout();
      self->_ranDataDetectors = 0;
      os_unfair_lock_unlock(&self->_dataDetectorsLock);
      os_unfair_lock_unlock(&self->_layoutLock);
      atomic_store(0, p_builtLayout);
    }
  }
}

- (void)fetchPageLayoutWithCompletion:(id)completion deliveredOnQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  if (self->_page)
  {
    v8 = atomic_load(&self->_builtLayout);
    if (v8)
    {
      completionCopy[2](completionCopy, self->_layout);
    }

    else
    {
      os_unfair_lock_lock(&self->_layoutLock);
      if (!self->_layout)
      {
        objc_initWeak(&location, self);
        document = [(PDFPage *)self document];
        textExtractionQueue = [document textExtractionQueue];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __58__PDFPage_fetchPageLayoutWithCompletion_deliveredOnQueue___block_invoke;
        v11[3] = &unk_1E81522F0;
        objc_copyWeak(&v14, &location);
        v12 = queueCopy;
        v13 = completionCopy;
        dispatch_async(textExtractionQueue, v11);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      os_unfair_lock_unlock(&self->_layoutLock);
    }
  }
}

void __58__PDFPage_fetchPageLayoutWithCompletion_deliveredOnQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 18);
    v4 = *&v3[20]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 18);
    if (!v4)
    {
      [(os_unfair_lock_s *)v3 _buildPageLayout];
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__PDFPage_fetchPageLayoutWithCompletion_deliveredOnQueue___block_invoke_2;
    v6[3] = &unk_1E8151048;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (CGPDFPageLayout)pageLayout
{
  result = self->_layout;
  if (!result)
  {
    [(PDFPage *)self _buildPageLayout];
    return self->_layout;
  }

  return result;
}

- (CGPDFPageLayout)pageLayoutIfAvail
{
  result = self->_layout;
  if (!result)
  {
    [(PDFPage *)self fetchPageLayoutWithCompletion:&__block_literal_global_324 deliveredOnQueue:MEMORY[0x1E69E96A0]];
    return self->_layout;
  }

  return result;
}

- (void)setBookmarked:(BOOL)bookmarked
{
  bookmarkedCopy = bookmarked;
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v11 = WeakRetained;
  if (WeakRetained && ([WeakRetained allowsDocumentAssembly] & 1) == 0)
  {
    permissionsStatus = [v11 permissionsStatus];
    v10 = @"user";
    if (permissionsStatus == 2)
    {
      v10 = @"owner";
    }

    NSLog(&cfstr_CannotSetBookm.isa, v10);
  }

  else
  {
    [(PDFPage *)self setBookmarked:bookmarkedCopy updateBookmarks:1];
    v6 = objc_loadWeakRetained(&self->_view);
    if ([v6 displaysBookmarksForPages])
    {
      v7 = [v6 pageViewForPageAtIndex:{objc_msgSend(v11, "indexForPage:", self)}];
      v8 = v7;
      if (v7)
      {
        if (self->_bookmarked)
        {
          [v7 addBookmark];
        }

        else
        {
          [v7 removeBookmark];
        }
      }
    }

    if (v11)
    {
      [v11 setBookmarked:bookmarkedCopy atPageIndex:{objc_msgSend(v11, "indexForPage:", self)}];
    }
  }
}

- (void)setBookmarked:(BOOL)bookmarked updateBookmarks:(BOOL)bookmarks
{
  self->_bookmarked = bookmarked;
  if (bookmarks)
  {
    WeakRetained = objc_loadWeakRetained(&self->_document);
    [WeakRetained updateBookmarksInPDFDocument];
  }
}

- (BOOL)containsFormFields
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_annotations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isActivatableTextField])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)containsDetectedFormFields
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_detectedAnnotations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = [*(*(&v20 + 1) + 8 * v7) valueForAnnotationKey:@"/AAPL:SFF"];

      if (v8)
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_annotations;
  v9 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v3);
      }

      v13 = [*(*(&v16 + 1) + 8 * v12) valueForAnnotationKey:{@"/AAPL:SFF", v16}];

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_18:
    v14 = 1;
    goto LABEL_19;
  }

LABEL_17:
  v14 = 0;
LABEL_19:

  return v14;
}

- (BOOL)containsFormFieldsWithContentType
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_detectedAnnotations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      autoFillTextContentType = [*(*(&v18 + 1) + 8 * v7) autoFillTextContentType];

      if (autoFillTextContentType)
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_annotations;
  v9 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = *v15;
LABEL_11:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v3);
      }

      autoFillTextContentType2 = [*(*(&v14 + 1) + 8 * v11) autoFillTextContentType];

      if (autoFillTextContentType2)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v9) = 1;
  }

LABEL_19:

  return v9;
}

- (void)addRedactionFromRectangularSelectionWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = self->_akPageAdaptor;
  if (v8)
  {
    v16 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_document);
    akController = [WeakRetained akController];
    v11 = [WeakRetained indexForPage:self];
    v12 = objc_alloc_init(AKRedactionRectAnnotationClass());
    v13 = v12;
    if (v12)
    {
      [v12 setRectangle:{x, y, width, height}];
      [v13 setOriginalExifOrientation:{objc_msgSend(akController, "currentExifOrientationForPageAtIndex:", v11)}];
      [akController currentModelBaseScaleFactorForPageAtIndex:v11];
      [v13 setOriginalModelBaseScaleFactor:?];
      akPageModelController = [(PDFAKPageAdaptor *)v16 akPageModelController];
      v15 = [akPageModelController mutableArrayValueForKey:@"annotations"];
      [v15 addObject:v13];
    }

    v8 = v16;
  }
}

+ (void)setNativeRotationDrawingEnabledForThisThread:(BOOL)thread
{
  threadCopy = thread;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:threadCopy];
  [threadDictionary setObject:v5 forKeyedSubscript:@"PDFKitNativeRotationDrawingEnabledKey"];
}

+ (BOOL)isNativeRotationDrawingEnabledForThisThread
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"PDFKitNativeRotationDrawingEnabledKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (void)setShouldHideAnnotationsForThisThread:(BOOL)thread
{
  threadCopy = thread;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:threadCopy];
  [threadDictionary setObject:v5 forKeyedSubscript:@"PDFKitShouldDrawAnnotationsKey"];
}

+ (BOOL)shouldHideAnnotationsForThisThread
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"PDFKitShouldDrawAnnotationsKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (void)setExcludingAKAnnotationRenderingForThisThread:(BOOL)thread
{
  threadCopy = thread;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:threadCopy];
  [threadDictionary setObject:v5 forKeyedSubscript:@"PDFKitRenderingForTilesKey"];
}

+ (BOOL)isExcludingAKAnnotationRenderingForThisThread
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"PDFKitRenderingForTilesKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)columnAtPointIfAvailable:(CGPoint)available
{
  y = available.y;
  x = available.x;
  selfCopy = self;
  document = [(PDFPage *)self document];
  [(PDFPage *)selfCopy columnFrameAtPoint:x, y];
  LOBYTE(selfCopy) = CGRectEqualToRect(v8, *MEMORY[0x1E695F058]);

  return selfCopy;
}

- (BOOL)columnAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  document = [(PDFPage *)self document];
  [(PDFPage *)selfCopy columnFrameAtPoint:x, y];
  LOBYTE(selfCopy) = CGRectEqualToRect(v8, *MEMORY[0x1E695F058]);

  return selfCopy;
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_view, obj);
    [(PDFPage *)self enableUndoManagerForAK:[(PDFPage *)self disableUndoManagerForAK]];
  }
}

- (id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CGAffineTransform)getDrawingTransformForBox:(SEL)box
{
  v7 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  result = [(PDFPage *)self boundsForBox:a4];
  x = v11;
  y = v13;
  width = v15;
  height = v17;
  if (a4)
  {
    [(PDFPage *)self boundsForBox:0];
    v30.origin.x = v19;
    v30.origin.y = v20;
    v30.size.width = v21;
    v30.size.height = v22;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = NSIntersectionRect(v28, v30);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  if (v7)
  {
    goto LABEL_4;
  }

  result = [(PDFPage *)self rotation];
  if (result == 270)
  {
    v23 = height + y;
    v26 = xmmword_1C1D79F70;
    v27 = xmmword_1C1D79E00;
    v24 = -x;
    goto LABEL_12;
  }

  if (result == 180)
  {
    v23 = width + x;
    v24 = height + y;
    v25 = -1.0;
    goto LABEL_5;
  }

  if (result == 90)
  {
    v23 = -y;
    v26 = xmmword_1C1D79F80;
    v27 = xmmword_1C1D79F90;
    v24 = width + x;
LABEL_12:
    *&retstr->a = v26;
    *&retstr->c = v27;
    goto LABEL_13;
  }

LABEL_4:
  v23 = -x;
  v24 = -y;
  v25 = 1.0;
LABEL_5:
  retstr->a = v25;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = v25;
LABEL_13:
  retstr->tx = v23;
  retstr->ty = v24;
  return result;
}

- (void)drawAnnotationsWithBox:(int64_t)box inContext:(CGContext *)context passingTest:(id)test
{
  v28 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_annotations];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v21 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ((!testCopy || testCopy[2](testCopy, *(*(&v23 + 1) + 8 * i))) && ([v13 intersectsWithRedactionPath] & 1) == 0)
        {
          isTransparent = [v13 isTransparent];
          [v13 setIsTransparent:0];
          v15 = [v13 valueForAnnotationKey:@"/Subtype"];
          if ([v15 isEqualToString:@"/SN"])
          {
            boxCopy = box;
            v17 = [PDFAnnotation alloc];
            [v13 bounds];
            v18 = [(PDFAnnotation *)v17 initWithBounds:@"/Widget" forType:0 withProperties:?];
            [(PDFAnnotation *)v18 setValue:@"/Sig" forAnnotationKey:@"/FT"];
            fieldName = [v13 fieldName];
            [(PDFAnnotation *)v18 setFieldName:fieldName];

            [(PDFAnnotation *)v18 setValue:MEMORY[0x1E695E118] forAnnotationKey:@"/AAPL:isSignatureMarker"];
            [(PDFAnnotation *)v18 setReadOnly:1];
            [v13 setShouldHideInteractiveBackgroundColor:1];
            dictionaryRef = [(PDFAnnotation *)v18 dictionaryRef];
            [v13 setShouldHideInteractiveBackgroundColor:0];
            if (dictionaryRef)
            {
              CGPDFContextAddAnnotation();
            }

            box = boxCopy;
            v8 = v21;
          }

          [v13 drawWithBox:box inContext:context];
          [v13 setIsTransparent:isTransparent];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (BOOL)disableUndoManagerForAK
{
  if (GetDefaultsWriteAKEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    if (!WeakRetained)
    {
      document = [(PDFPage *)self document];
      renderingProperties = [document renderingProperties];
      WeakRetained = [renderingProperties pdfView];
    }

    undoManager = [WeakRetained undoManager];
    isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];
    if (isUndoRegistrationEnabled)
    {
      [undoManager disableUndoRegistration];
    }

    if (WeakRetained)
    {
      [(PDFPage *)self setupAKPageAdaptorIfNecessary];
    }
  }

  else
  {
    LOBYTE(isUndoRegistrationEnabled) = 1;
  }

  return isUndoRegistrationEnabled;
}

- (void)enableUndoManagerForAK:(BOOL)k
{
  kCopy = k;
  if (!GetDefaultsWriteAKEnabled())
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (!WeakRetained)
  {
    document = [(PDFPage *)self document];
    renderingProperties = [document renderingProperties];
    pdfView = [renderingProperties pdfView];

    WeakRetained = pdfView;
    if (!kCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (kCopy)
  {
LABEL_4:
    v9 = WeakRetained;
    undoManager = [WeakRetained undoManager];
    [undoManager enableUndoRegistration];

    WeakRetained = v9;
  }

LABEL_5:
}

- (Class)annotationSubclassForSubtype:(id)subtype
{
  subtypeCopy = subtype;
  document = [(PDFPage *)self document];
  v6 = document;
  if (document && (v7 = [document annotationSubclassForType:subtypeCopy]) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_class();
  }

  v9 = v8;

  return v9;
}

- (void)getAnnotations
{
  if (self->_page)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    if (v3)
    {
      MachSeconds = GetMachSeconds();
      array = [MEMORY[0x1E695DF70] array];
      document = [(PDFPage *)self document];
      hasHighLatencyDataProvider = [document hasHighLatencyDataProvider];
      v8 = hasHighLatencyDataProvider;
      if (hasHighLatencyDataProvider && [MEMORY[0x1E696AF00] isMainThread])
      {
        _PDFLog(OS_LOG_TYPE_FAULT, "PDFAnnotation", "getAnnotations() is being called on main thread", v9, v10, v11, v12, v13, v28);
      }

      else
      {
        callShouldReadAKInkAnnotations = [document callShouldReadAKInkAnnotations];
        v36 = MEMORY[0x1E69E9820];
        v37 = 3221225472;
        v38 = __25__PDFPage_getAnnotations__block_invoke;
        v39 = &unk_1E81523D0;
        selfCopy = self;
        v43 = callShouldReadAKInkAnnotations;
        v15 = v3;
        v41 = v15;
        v16 = array;
        v42 = v16;
        v44 = v8;
        CGPDFPageEnumerateAnnotations();
        v17 = [MEMORY[0x1E695DF70] arrayWithArray:v15];
        annotations = self->_annotations;
        self->_annotations = v17;

        delegate = [document delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate pdfDocument:document loadedAnnotations:self->_annotations forPage:self];
        }

        aBlock = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __25__PDFPage_getAnnotations__block_invoke_3;
        v32 = &unk_1E8151480;
        selfCopy2 = self;
        v34 = v15;
        v35 = v16;
        v20 = _Block_copy(&aBlock);
        if (self->_akPageAdaptor && ![MEMORY[0x1E696AF00] isMainThread])
        {
          dispatch_async(MEMORY[0x1E69E96A0], v20);
        }

        else
        {
          v20[2](v20);
        }

        if (GetDefaultsWriteLogPerfTimes())
        {
          v21 = MachSeconds;
          date = [MEMORY[0x1E695DF00] date];
          [date timeIntervalSince1970];
          v24 = (v23 * 1000.0);

          document2 = [(PDFPage *)self document];
          v26 = [document2 indexForPage:self];
          v27 = GetMachSeconds();
          NSLog(&cfstr_Pdfkit2Logperf_5.isa, v26, v24, v27 - v21, aBlock, v30, v31, v32, selfCopy2, v34);
        }
      }
    }
  }
}

void __25__PDFPage_getAnnotations__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
  value = 0;
  if (!CGPDFDictionaryGetName(CGPDFDictionary, "Subtype", &value) || (v6 = *(a1 + 32), [MEMORY[0x1E696AEC0] stringWithUTF8String:value], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "annotationSubclassForSubtype:", v7), v7, !v8))
  {
    v8 = objc_opt_class();
  }

  if (*(a1 + 56) == 1)
  {
    v9 = [PDFAKAnnotationSerializationHelper akAnnotationFromCGPDFAnnotation:a3 andDictionary:CGPDFDictionary];
    AKInkAnnotationClass();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_opt_self();
    }
  }

  if (v8)
  {
    v10 = [[v8 alloc] initWithCGPDFAnnotation:a3 forPage:*(a1 + 32)];
    v11 = v10;
    if (v10)
    {
      [v10 setIsFullyConstructed:0];
      [*(a1 + 40) addObject:v11];
      v12 = [v11 valueForAnnotationKey:@"/Subtype"];
      if ([v12 isEqualToString:@"/Popup"])
      {
        [*(a1 + 48) addObject:v11];
      }

      v13 = [v11 valueForAnnotationKey:@"/Subtype"];
      v14 = [v13 isEqualToString:@"/Widget"];

      if (v14)
      {
        [*(a1 + 32) _addWidgetAnnotationToLookupDictionary:v11];
      }

      [v11 setCGPDFAnnotation:a3];
      if (*(a1 + 57) == 1)
      {
        [v11 cacheAppearances];
      }

      v15 = *(a1 + 32);
      if (*(v15 + 368))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __25__PDFPage_getAnnotations__block_invoke_2;
        aBlock[3] = &unk_1E8150FF8;
        aBlock[4] = v15;
        v18 = v11;
        v16 = _Block_copy(aBlock);
        if ([MEMORY[0x1E696AF00] isMainThread])
        {
          v16[2](v16);
        }

        else
        {
          dispatch_async(MEMORY[0x1E69E96A0], v16);
        }
      }

      [v11 setIsFullyConstructed:1];
    }
  }
}

uint64_t __25__PDFPage_getAnnotations__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) disableUndoManagerForAK];
  [*(a1 + 40) setupAKAnnotationAdaptorIfNecessary];
  [*(*(a1 + 32) + 368) pdfPage:*(a1 + 32) didAddAnnotation:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 enableUndoManagerForAK:v2];
}

uint64_t __25__PDFPage_getAnnotations__block_invoke_3(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = [*(a1 + 32) disableUndoManagerForAK];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = a1;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        if ([v6 popupDictionary])
        {
          ObjectReference = CGPDFDictionaryGetObjectReference();
          if (ObjectReference | v8)
          {
            v9 = ObjectReference;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v10 = *(v18 + 48);
            v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v21;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v21 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v20 + 1) + 8 * j);
                  if (v6 != v15)
                  {
                    [*(*(&v20 + 1) + 8 * j) sourceDictionary];
                    if (v9 == CGPDFDictionaryGetObjectReference())
                    {
                      [v6 setIsFullyConstructed:0];
                      [v15 setIsFullyConstructed:0];
                      [v6 setPopupInternal:v15 scanPage:0];
                      [v15 setIsFullyConstructed:1];
                      [v6 setIsFullyConstructed:1];
                      goto LABEL_19;
                    }
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }

  return [*(v18 + 32) enableUndoManagerForAK:v17];
}

- (id)getSelectedAnnotations
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  akPageAdaptor = [(PDFPage *)self akPageAdaptor];
  akPageModelController = [akPageAdaptor akPageModelController];
  selectedAnnotations = [akPageModelController selectedAnnotations];
  allObjects = [selectedAnnotations allObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [PDFAKAnnotationAdaptor getPDFAnnotationAssociatedWith:*(*(&v15 + 1) + 8 * i), v15];
        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v3;
}

- (id)getActiveAnnotation
{
  document = [(PDFPage *)self document];
  akController = [document akController];
  if (objc_opt_respondsToSelector())
  {
    textEditorController = [akController textEditorController];
    annotation = [textEditorController annotation];
    if (annotation)
    {
      v7 = [PDFAKAnnotationAdaptor getPDFAnnotationAssociatedWith:annotation];
      page = [v7 page];
      v9 = [page isEqual:self];

      if (v9)
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v7 = 0;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)annotationWithUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_annotations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        pdfAnnotationUUID = [v9 pdfAnnotationUUID];
        v11 = [pdfAnnotationUUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)annotationsForFieldName:(id)name
{
  if (name)
  {
    nameCopy = name;
    os_unfair_lock_lock(&self->_widgetAnnotationLookupLock);
    v5 = [(NSMutableDictionary *)self->_widgetAnnotationLookup objectForKey:nameCopy];

    os_unfair_lock_unlock(&self->_widgetAnnotationLookupLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addWidgetAnnotationToLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  fieldName = [dictionaryCopy fieldName];
  if (fieldName)
  {
    os_unfair_lock_lock(&self->_widgetAnnotationLookupLock);
    v5 = [(NSMutableDictionary *)self->_widgetAnnotationLookup objectForKey:fieldName];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v5 addObject:dictionaryCopy];
    [(NSMutableDictionary *)self->_widgetAnnotationLookup setObject:v5 forKey:fieldName];
    os_unfair_lock_unlock(&self->_widgetAnnotationLookupLock);
  }
}

- (void)_removeWidgetAnnotationFromLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  fieldName = [dictionaryCopy fieldName];
  if (fieldName)
  {
    os_unfair_lock_lock(&self->_widgetAnnotationLookupLock);
    v5 = [(NSMutableDictionary *)self->_widgetAnnotationLookup objectForKey:fieldName];
    v6 = v5;
    if (v5)
    {
      [v5 removeObject:dictionaryCopy];
    }

    os_unfair_lock_unlock(&self->_widgetAnnotationLookupLock);
  }
}

- (void)addAnnotationFormField:(id)field
{
  v24 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  document = [(PDFPage *)self document];
  v6 = document;
  if (document)
  {
    formData = [document formData];
    if (formData)
    {
      selfCopy = self;
      v18 = fieldCopy;
      if (fieldCopy)
      {
        [MEMORY[0x1E695DEC8] arrayWithObject:fieldCopy];
      }

      else
      {
        [(NSLock *)self->_lock_accessAnnotations lock];
        [(PDFPage *)self annotations];
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v8 = v20 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            fieldName = [v13 fieldName];
            if (fieldName)
            {
              v15 = [formData fieldNamed:fieldName];

              if (!v15)
              {
                v16 = [[PDFFormField alloc] initWithAnnotation:v13];
                [formData addFormField:v16];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }

      fieldCopy = v18;
      if (!v18)
      {
        [(NSLock *)selfCopy->_lock_accessAnnotations unlock];
      }
    }

    else
    {
      NSLog(&cfstr_TempAddannotat.isa);
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    formData = 0;
  }
}

- (void)addDetectedAnnotations:(id)annotations
{
  v19 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  if (annotationsCopy)
  {
    [(NSLock *)self->_lock_accessAnnotations lock];
    if (!self->_detectedAnnotations)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
      detectedAnnotations = self->_detectedAnnotations;
      self->_detectedAnnotations = v5;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = annotationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) setPage:{self, v14}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_detectedAnnotations addObjectsFromArray:v7];
    [(NSLock *)self->_lock_accessAnnotations unlock];
    WeakRetained = objc_loadWeakRetained(&self->_document);
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate pdfDocument:WeakRetained detectedAnnotations:self->_detectedAnnotations forPage:self];
    }
  }
}

- (void)removeFromDetectedAnnotations:(id)annotations
{
  detectedAnnotations = self->_detectedAnnotations;
  if (detectedAnnotations)
  {
    [(NSMutableArray *)detectedAnnotations removeObjectsInArray:annotations];
  }
}

- (id)scannedAnnotationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_document);
  enableDataDetectors = [WeakRetained enableDataDetectors];

  if (enableDataDetectors)
  {
    [(PDFPage *)self _buildPageLayout];
    v8 = self->_detectedAnnotations;
    v9 = v8;
    if (v8 && (v10 = [(NSMutableArray *)v8 count]) != 0)
    {
      v11 = v10 - 1;
      while (1)
      {
        v12 = [(NSMutableArray *)v9 objectAtIndex:v11];
        [v12 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v23.x = x;
        v23.y = y;
        v24.origin.x = v14;
        v24.origin.y = v16;
        v24.size.width = v18;
        v24.size.height = v20;
        if (NSPointInRect(v23, v24))
        {
          break;
        }

        if (--v11 == -1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)changedAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ([annotationCopy isFullyConstructed] && -[NSMutableArray containsObject:](self->_annotations, "containsObject:", annotationCopy))
  {
    v4 = [[PDFAnnotationChange alloc] initWithChangedAnnotation:annotationCopy];
    [(NSMutableArray *)self->_annotationChanges addObject:v4];
    [(NSMutableSet *)self->_changedAnnotations addObject:annotationCopy];
  }
}

- (id)annotationChanges
{
  v60 = *MEMORY[0x1E69E9840];
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = self->_annotationChanges;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        annotation = [v9 annotation];
        v11 = [strongToStrongObjectsMapTable objectForKey:annotation];
        if (!v11)
        {
          v11 = objc_opt_new();
          [strongToStrongObjectsMapTable setObject:v11 forKey:annotation];
        }

        [v11 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v6);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [strongToStrongObjectsMapTable keyEnumerator];
  v40 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (!v40)
  {
    goto LABEL_63;
  }

  v39 = *v50;
  v37 = strongToStrongObjectsMapTable;
  do
  {
    v12 = 0;
    do
    {
      if (*v50 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [strongToStrongObjectsMapTable objectForKey:v13];
      v15 = [v14 sortedArrayWithOptions:0 usingComparator:&__block_literal_global_366];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v16 = v15;
      v17 = [(PDFAnnotationChange *)v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (!v17)
      {
        v44 = 0;
        v22 = 0;
        v21 = 0;
        v30 = v16;
        goto LABEL_58;
      }

      v18 = v17;
      v38 = v13;
      v41 = v12;
      v42 = v14;
      v19 = 0;
      v20 = 0;
      v43 = 0;
      v21 = 0;
      v22 = 0;
      v44 = 0;
      v23 = *v46;
      v24 = 1;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v16);
          }

          v26 = *(*(&v45 + 1) + 8 * j);
          if ([v26 changeType])
          {
            if ([v26 changeType] == 2)
            {
              v20 |= v24;
              if (v24)
              {
                v19 = 0;
              }

              else
              {
                --v19;
              }

              if (!v22)
              {
                v22 = v26;
              }

              v24 = 0;
            }

            else if ([v26 changeType] == 1)
            {
              if (v24)
              {
                v19 = 1;
              }

              v20 |= v24;
              if (!v44)
              {
                v44 = v26;
              }

              v24 = 0;
              v43 = 1;
            }

            else if ([v26 changeType] != 3)
            {
              [v26 changeType];
            }
          }

          else
          {
            v20 &= v24 ^ 1;
            if (v24)
            {
              v19 = 1;
            }

            else
            {
              ++v19;
            }

            v27 = v26;

            v24 = 0;
            v21 = v27;
          }
        }

        v18 = [(PDFAnnotationChange *)v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v18);

      if (v19 >= 2)
      {
        NSLog(&cfstr_SAnnotationCha.isa, "[PDFPage annotationChanges]", v19, v16);

        v33 = 0;
        v32 = v35;
        strongToStrongObjectsMapTable = v37;
        goto LABEL_65;
      }

      strongToStrongObjectsMapTable = v37;
      v14 = v42;
      if (v19 != 1)
      {
        v12 = v41;
        if ((v20 & 1) == 0)
        {
          goto LABEL_59;
        }

        v29 = v22;
LABEL_56:
        v30 = v29;
        if (!v29)
        {
          goto LABEL_59;
        }

LABEL_57:
        [v35 addObject:v30];
LABEL_58:

        goto LABEL_59;
      }

      v12 = v41;
      if ((v20 & 1) == 0)
      {
        v29 = v21;
        v21 = v29;
        goto LABEL_56;
      }

      if (v21)
      {
        v28 = [PDFAnnotationChange alloc];
        if (v43)
        {
          v29 = [(PDFAnnotationChange *)v28 initWithReorderedAndChangedAnnotation:v38];
        }

        else
        {
          v29 = [(PDFAnnotationChange *)v28 initWithReorderedAnnotation:v38];
        }

        goto LABEL_56;
      }

      if (v43)
      {
        v30 = v44;
        v21 = 0;
        if (v30)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_59:

      ++v12;
    }

    while (v12 != v40);
    v31 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    v40 = v31;
  }

  while (v31);
LABEL_63:

  [strongToStrongObjectsMapTable removeAllObjects];
  v32 = v35;
  v33 = v35;
LABEL_65:

  return v33;
}

uint64_t __28__PDFPage_annotationChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 changeTimestamp];
  if (v6 == [v5 changeTimestamp])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 changeTimestamp];
    if (v8 < [v5 changeTimestamp])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)changedAnnotations
{
  v2 = [(NSMutableSet *)self->_changedAnnotations copy];

  return v2;
}

- (void)resetChangedAnnotations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  changedAnnotations = self->_changedAnnotations;
  self->_changedAnnotations = v3;

  MEMORY[0x1EEE66BB8](v3, changedAnnotations);
}

- (void)printActivePageAnnotations
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v4 = [WeakRetained indexForPage:self];
  annotations = [(PDFPage *)self annotations];
  NSLog(&cfstr_CurrentPageInd.isa, v4, [annotations count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_annotations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        NSLog(&cfstr_PrintingDictio.isa, v9);
        v9 = (v9 + 1);
        [v12 printDictionaryKeyValues];
        NSLog(&stru_1F416DF70.isa);
        ++v11;
      }

      while (v8 != v11);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)addFormFieldGroup:(id)group
{
  groupCopy = group;
  formFieldGroups = self->_formFieldGroups;
  v8 = groupCopy;
  if (!formFieldGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_formFieldGroups;
    self->_formFieldGroups = v6;

    groupCopy = v8;
    formFieldGroups = self->_formFieldGroups;
  }

  [(NSMutableArray *)formFieldGroups addObject:groupCopy];
}

- (id)formFieldGroupForAnnotation:(id)annotation
{
  v16 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_formFieldGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsObject:{annotationCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setApplicationData:(id)data withName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v7 = dataCopy;
  v8 = nameCopy;
  persistentApplicationData = self->_persistentApplicationData;
  if (dataCopy)
  {
    if (!persistentApplicationData)
    {
      v10 = objc_opt_new();
      v11 = self->_persistentApplicationData;
      self->_persistentApplicationData = v10;

      v7 = dataCopy;
      persistentApplicationData = self->_persistentApplicationData;
    }

    [(NSMutableDictionary *)persistentApplicationData setObject:v7 forKeyedSubscript:v8];
    document = [(PDFPage *)self document];
    [document setHasPageWithApplicationData:1];
  }

  else
  {
    [(NSMutableDictionary *)persistentApplicationData removeObjectForKey:v8];
  }
}

- (void)enumerateApplicationDataUsingBlock:(id)block
{
  blockCopy = block;
  persistentApplicationData = self->_persistentApplicationData;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PDFPage_enumerateApplicationDataUsingBlock___block_invoke;
  v7[3] = &unk_1E8152418;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)persistentApplicationData enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)postAnnotationsChangedNotification
{
  view = [(PDFPage *)self view];

  if (view)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__postAnnotationsChangedNotificationCoalesced object:0];

    [(PDFPage *)self performSelector:sel__postAnnotationsChangedNotificationCoalesced withObject:0 afterDelay:0.0];
  }
}

- (void)_postAnnotationsChangedNotificationCoalesced
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  view = [(PDFPage *)self view];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{self, @"page", 0}];
  [defaultCenter postNotificationName:@"PDFViewAnnotationsDidChange" object:view userInfo:v4];
}

- (void)_scanData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_dataDetectorsLock);
  if (self->_ranDataDetectors)
  {

    os_unfair_lock_unlock(&self->_dataDetectorsLock);
  }

  else
  {
    self->_ranDataDetectors = 1;
    string = [(PDFPage *)self string];
    v5 = string;
    if (string && [string length])
    {
      v6 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
      [v6 setSpotlightSuggestionsEnabled:1];
      v24 = v6;
      v25 = v5;
      v7 = [MEMORY[0x1E6999A88] scanString:v5 range:0 configuration:{objc_msgSend(v5, "length"), v6}];
      array = [MEMORY[0x1E695DF70] array];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            v13 = [[PDFScannerResult alloc] initWithDDScannerResult:v12 foundOnPage:self];
            if (v13)
            {
              [(NSMutableArray *)self->_scannerResults addObject:v13];
              v14 = [v12 url];
              if (v14)
              {
                [(PDFScannerResult *)v13 bounds];
                v18 = [(PDFPage *)self annotationAtPoint:PDFRectGetCenterPoint(v15, v16, v17)];
                v19 = [v18 valueForAnnotationKey:@"/Subtype"];
                v20 = [v19 isEqualToString:@"/Link"];

                if ((v20 & 1) == 0)
                {
                  v21 = objc_alloc([(PDFPage *)self annotationSubclassForSubtype:@"/Link"]);
                  [(PDFScannerResult *)v13 bounds];
                  v22 = [v21 initCommonWithBounds:?];
                  [v22 setType:@"/Link"];
                  [v22 setURL:v14];
                  [v22 setForExport:0];
                  [array addObject:v22];
                }
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v9);
      }

      if ([array count])
      {
        view = [(PDFPage *)self view];

        if (view)
        {
          [(PDFPage *)self addDetectedAnnotations:array];
        }
      }

      os_unfair_lock_unlock(&self->_dataDetectorsLock);

      v5 = v25;
    }

    else
    {
      os_unfair_lock_unlock(&self->_dataDetectorsLock);
    }
  }
}

- (id)dataDetectorResults
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_document);
  enableDataDetectors = [WeakRetained enableDataDetectors];

  if (enableDataDetectors && os_unfair_lock_trylock(&self->_dataDetectorsLock))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_scannerResults;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          ddResult = [*(*(&v13 + 1) + 8 * i) ddResult];
          [v5 addObject:ddResult];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_dataDetectorsLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pdfScannerResultAtPoint:(CGPoint)point onPageLayer:(id)layer
{
  y = point.y;
  x = point.x;
  v34 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  if (!os_unfair_lock_trylock(&self->_dataDetectorsLock))
  {
    v21 = 0;
    goto LABEL_31;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_scannerResults;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v9)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v10 = v9;
  selfCopy = self;
  v11 = *v29;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v28 + 1) + 8 * i);
      if ([v13 resultIsPastDate])
      {
        continue;
      }

      if (layerCopy)
      {
        if ([v13 containsPoint:layerCopy onPageLayer:{x, y}])
        {
          goto LABEL_12;
        }
      }

      else if ([v13 containsPoint:{x, y}])
      {
LABEL_12:
        v14 = v13;
        if (v14)
        {
          v21 = v14;
          goto LABEL_29;
        }
      }

      rects = [v13 rects];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = rects;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
LABEL_15:
        v20 = 0;
        while (1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v24 + 1) + 8 * v20) PDFKitPDFRectValue];
          v36.x = x;
          v36.y = y;
          if (PDFRectContainsPoint(v37, v36))
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v18)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        v21 = v13;

        if (v21)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_21:
      }
    }

    v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v21 = 0;
LABEL_29:
  self = selfCopy;
LABEL_30:

  os_unfair_lock_unlock(&self->_dataDetectorsLock);
LABEL_31:

  return v21;
}

- (id)rvItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(PDFPage *)self pdfScannerResultAtPoint:?];
  if (v6)
  {
    [(PDFPage *)self rvItemWithPDFScannerResult:v6];
  }

  else
  {
    [(PDFPage *)self _rvItemAtPoint:x, y];
  }
  v7 = ;

  return v7;
}

- (id)rvItemAtPoint:(CGPoint)point onPageLayer:(id)layer
{
  y = point.y;
  x = point.x;
  v7 = [(PDFPage *)self pdfScannerResultAtPoint:layer onPageLayer:?];
  if (v7)
  {
    [(PDFPage *)self rvItemWithPDFScannerResult:v7];
  }

  else
  {
    [(PDFPage *)self _rvItemAtPoint:x, y];
  }
  v8 = ;

  return v8;
}

- (id)_rvItemAtPoint:(CGPoint)point
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [(PDFPage *)self selectionFromPoint:1 toPoint:point.x type:point.y, point.x, point.y];
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v7 = [v5 rangeAtIndex:0 onPage:self];
    v8 = objc_alloc(RVItemClass());
    string = [(PDFPage *)self string];
    v10 = [v8 initWithText:string selectedRange:{v7, 0}];

    [v10 highlightRange];
    if (v11)
    {
      highlightRange = [v10 highlightRange];
      v14 = [(PDFPage *)self selectionForRange:highlightRange, v13];
      v17 = @"selection";
      v18[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [v10 setClientHints:v15];
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)rvItemWithPDFScannerResult:(id)result
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    resultCopy = result;
    v5 = objc_alloc(RVItemClass());
    ddResult = [resultCopy ddResult];
    v7 = [v5 initWithDDResult:ddResult];

    ddResult2 = [resultCopy ddResult];

    urlificationRange = [ddResult2 urlificationRange];
    v11 = [(PDFPage *)self selectionForRange:urlificationRange, v10];

    v14 = @"selection";
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v7 setClientHints:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_documentIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v4 = [WeakRetained indexForPage:self];

  return v4;
}

- (CGPath)createRedactionPath
{
  v17 = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_annotations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isRedaction])
        {
          quadPointsPath = [v9 quadPointsPath];
          if (quadPointsPath)
          {
            CGPathAddPath(Mutable, 0, quadPointsPath);
          }

          else
          {
            [v9 bounds];
            CGPathAddRect(Mutable, 0, v18);
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if (CGPathIsEmpty(Mutable))
  {
    CGPathRelease(Mutable);
    return 0;
  }

  return Mutable;
}

- (BOOL)rectIntersectsWithRedactionPath:(CGRect)path
{
  createRedactionPath = [(PDFPage *)self createRedactionPath];
  v4 = CGPathIntersectsRect();
  CGPathRelease(createRedactionPath);
  return v4;
}

- (BOOL)pathIntersectsWithRedactionPath:(CGPath *)path
{
  createRedactionPath = [(PDFPage *)self createRedactionPath];
  LOBYTE(path) = MEMORY[0x1C690CAE0](createRedactionPath, path, 1);
  CGPathRelease(createRedactionPath);
  return path;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDFPage;
  v3 = [(PDFPage *)&v7 description];
  document = [(PDFPage *)self document];
  v5 = [v3 stringByAppendingFormat:@" page index %ld", objc_msgSend(document, "indexForPage:", self)];

  return v5;
}

- (id)debugQuickLookObject
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = PDFSizeMake(self, 600.0, 600.0);
  v5 = v4;
  v9 = @"PDFPageImageProperty_WithRotation";
  v10[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [(PDFPage *)self imageOfSize:1 forBox:v6 withOptions:v3, v5];

  return v7;
}

- (void)setExtraContentStream:(CGPDFStream *)stream steamDocument:(CGPDFDocument *)document
{
  [(PDFPage *)self pageRef];
  CGPDFPageSetExtraContentStream();
  self->_textFromOCR = stream != 0;
  [(PDFPage *)self purgePageLayout];

  [(PDFPage *)self _releaseDisplayList];
}

- (id)annotationForDetectedFormField:(id)field
{
  if (field)
  {
    v3 = objc_getAssociatedObject(field, @"com.apple.pdfkit.AnnotationAssociatedObjectKey");
    object = [v3 object];
  }

  else
  {
    object = 0;
  }

  return object;
}

- (id)detectedFormFieldForAnnotation:(id)annotation
{
  if (annotation)
  {
    v3 = objc_getAssociatedObject(annotation, @"com.apple.pdfkit.DetectedFormFieldAssociatedObjectKey");
    object = [v3 object];
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)addedAnnotation:(id)annotation forFormField:(id)field
{
  fieldCopy = field;
  annotationCopy = annotation;
  v7 = [PDFWeakWrapper weakWrapperWithObject:fieldCopy];
  objc_setAssociatedObject(annotationCopy, @"com.apple.pdfkit.DetectedFormFieldAssociatedObjectKey", v7, 0x301);

  value = [PDFWeakWrapper weakWrapperWithObject:annotationCopy];

  objc_setAssociatedObject(fieldCopy, @"com.apple.pdfkit.AnnotationAssociatedObjectKey", value, 0x301);
}

@end