@interface THGlossaryEntryRep
- (id)childRepsForHitTesting;
- (id)fontNameForLabelControl:(id)control;
- (id)p_newTitleLayer;
- (id)stringForLabelControl:(id)control;
- (id)textColorForLabelControl:(id)control;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
- (void)drawInLayerContext:(CGContext *)context;
@end

@implementation THGlossaryEntryRep

- (void)dealloc
{
  self->mTitleLayer = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryEntryRep;
  [(THGlossaryEntryRep *)&v3 dealloc];
}

- (void)drawInLayerContext:(CGContext *)context
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THGlossaryEntryRep drawInLayerContext:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THGlossaryEntryRep.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:39 description:{@"this method should never be called, and entry reps should never get a bitmap allocated"}];
}

- (id)p_newTitleLayer
{
  v3 = objc_alloc_init(CATextLayer);
  [v3 setContentsGravity:kCAGravityTopLeft];
  [v3 setString:{objc_msgSend(objc_msgSend(-[THGlossaryEntryRep info](self, "info"), "entry"), "term")}];
  [v3 setFont:@"Baskerville"];
  [v3 setFontSize:38.0];
  v4 = [objc_msgSend(-[THGlossaryEntryRep layout](self "layout")];
  if (!v4)
  {
    v4 = +[TSUColor blackColor];
  }

  [v3 setForegroundColor:{objc_msgSend(v4, "CGColor")}];
  [v3 setBackgroundColor:{objc_msgSend(objc_msgSend(objc_msgSend(-[THGlossaryEntryRep layout](self, "layout"), "layoutStyleProvider"), "glossaryEntryLayoutBackgroundColor"), "CGColor")}];
  return v3;
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  if (([-[THGlossaryEntryRep info](self "info")] & 1) == 0)
  {
    if (!self->mTitleLayer)
    {
      self->mTitleLayer = [(THGlossaryEntryRep *)self p_newTitleLayer];
    }

    [-[THGlossaryEntryRep layout](self "layout")];
    [(CATextLayer *)self->mTitleLayer setFrame:?];
    mTitleLayer = self->mTitleLayer;

    [array addObject:mTitleLayer];
  }
}

- (void)didUpdateLayer:(id)layer
{
  v4 = [objc_msgSend(objc_msgSend(-[THGlossaryEntryRep layout](self "layout")];

  [layer setBackgroundColor:v4];
}

- (id)childRepsForHitTesting
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childReps = [(THGlossaryEntryRep *)self childReps];
  v5 = [childReps countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(childReps);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [childReps countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)stringForLabelControl:(id)control
{
  if ([objc_msgSend(control "layout")])
  {
    if ([objc_msgSend(control "layout")] != &dword_0 + 1)
    {
      return 0;
    }

    v4 = @"Index";
  }

  else
  {
    v4 = @"Related Glossary Terms";
  }

  v5 = THBundle();

  return [v5 localizedStringForKey:v4 value:&stru_471858 table:0];
}

- (id)fontNameForLabelControl:(id)control
{
  v3 = [TSUFont systemFontOfSize:control, 15.0];

  return [v3 fontName];
}

- (id)textColorForLabelControl:(id)control
{
  layout = [-[THGlossaryEntryRep layout](self layout];

  return [layout glossaryEntryLayoutForegroundColor];
}

@end