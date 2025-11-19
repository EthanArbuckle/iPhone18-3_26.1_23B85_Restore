@interface CRLPathKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 inputType:(int64_t)a4 returningDistance:(double *)a5;
- (BOOL)obscuresKnob:(id)a3;
- (BOOL)overlapsWithKnob:(id)a3;
- (CGAffineTransform)p_underlayRenderableTransformForRep:(SEL)a3;
- (CRLPathKnob)initWithInControlForNode:(id)a3 onRep:(id)a4;
- (CRLPathKnob)initWithNode:(id)a3 onRep:(id)a4;
- (CRLPathKnob)initWithOutControlForNode:(id)a3 onRep:(id)a4;
- (id)initBendKnobOnRep:(id)a3;
- (id)knobImage;
- (id)p_knobHitPath;
- (id)underlayRenderableForRep:(id)a3;
- (void)setHovering:(BOOL)a3;
- (void)setHoveringSharp:(BOOL)a3;
- (void)updateImage;
- (void)updatePositionWithTransform:(CGAffineTransform *)a3;
@end

@implementation CRLPathKnob

- (id)initBendKnobOnRep:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLPathKnob;
  return [(CRLCanvasKnob *)&v4 initWithType:0 position:23 radius:a3 tag:CGPointZero.x onRep:CGPointZero.y, 10.0];
}

- (CRLPathKnob)initWithNode:(id)a3 onRep:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v7 nodePoint];
  v12.receiver = self;
  v12.super_class = CRLPathKnob;
  v9 = [CRLCanvasKnob initWithType:"initWithType:position:radius:tag:onRep:" position:0 radius:17 tag:v8 onRep:?];

  if (v9)
  {
    objc_storeStrong(&v9->_node, a3);
    v10 = [(CRLPathKnob *)v9 p_knobHitPath];
    [(CRLCanvasKnob *)v9 setHitRegionPath:v10];
  }

  return v9;
}

- (CRLPathKnob)initWithInControlForNode:(id)a3 onRep:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v7 inControlPoint];
  v12.receiver = self;
  v12.super_class = CRLPathKnob;
  v9 = [CRLCanvasKnob initWithType:"initWithType:position:radius:tag:onRep:" position:0 radius:18 tag:v8 onRep:?];

  if (v9)
  {
    objc_storeStrong(&v9->_node, a3);
    v10 = [(CRLPathKnob *)v9 p_knobHitPath];
    [(CRLCanvasKnob *)v9 setHitRegionPath:v10];
  }

  return v9;
}

- (CRLPathKnob)initWithOutControlForNode:(id)a3 onRep:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v7 outControlPoint];
  v12.receiver = self;
  v12.super_class = CRLPathKnob;
  v9 = [CRLCanvasKnob initWithType:"initWithType:position:radius:tag:onRep:" position:0 radius:19 tag:v8 onRep:?];

  if (v9)
  {
    objc_storeStrong(&v9->_node, a3);
    v10 = [(CRLPathKnob *)v9 p_knobHitPath];
    [(CRLCanvasKnob *)v9 setHitRegionPath:v10];
  }

  return v9;
}

- (id)p_knobHitPath
{
  v2 = sub_10011EC70(CGPointZero.x, CGPointZero.y, 20.0);

  return [CRLBezierPath bezierPathWithOvalInRect:v2];
}

- (void)setHovering:(BOOL)a3
{
  if (self->_hovering != a3)
  {
    self->_hovering = a3;
    [(CRLPathKnob *)self updateImage];
  }
}

- (void)setHoveringSharp:(BOOL)a3
{
  if (self->_hoveringSharp != a3)
  {
    self->_hoveringSharp = a3;
    [(CRLPathKnob *)self updateImage];
  }
}

- (BOOL)obscuresKnob:(id)a3
{
  v4 = a3;
  if ([v4 tag] == 23)
  {
    v5 = 1;
  }

  else if ([(CRLCanvasKnob *)self tag]== 23)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLPathKnob;
    v5 = [(CRLCanvasKnob *)&v7 obscuresKnob:v4];
  }

  return v5;
}

- (BOOL)overlapsWithKnob:(id)a3
{
  v4 = a3;
  if ([v4 tag] == 23 || -[CRLCanvasKnob tag](self, "tag") == 23)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLPathKnob;
    v5 = [(CRLCanvasKnob *)&v7 overlapsWithKnob:v4];
  }

  return v5;
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 inputType:(int64_t)a4 returningDistance:(double *)a5
{
  y = a3.y;
  x = a3.x;
  if ([(CRLCanvasKnob *)self tag]== 23 || [(CRLCanvasKnob *)self tag]== 24)
  {
    v10 = [(CRLCanvasKnob *)self rep];
    v11 = [v10 editablePathSource];
    v12 = v11;
    if (!v11 || ([v11 nodes], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, !v14))
    {
      v18 = 0;
LABEL_29:

      return v18;
    }

    v15 = [(CRLCanvasKnob *)self rep];
    [v15 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v81 = v17;
    v84 = v16;
    if (v10)
    {
      [v10 naturalToEditablePathSpaceTransform];
    }

    else
    {
      memset(&v89, 0, sizeof(v89));
    }

    CGAffineTransformInvert(&v91, &v89);
    v87 = 0;
    v88 = 0;
    v86 = 0.0;
    [v12 distanceToPoint:&v87 subpathIndex:&v88 elementIndex:&v86 tValue:vaddq_f64(*&v91.tx threshold:{vmlaq_n_f64(vmulq_n_f64(*&v91.c, v81), *&v91.a, v84)), 0.0}];
    *a5 = v19;
    v20 = [v12 subpaths];
    v21 = [v20 objectAtIndexedSubscript:v87];

    v22 = [v21 nodes];
    v23 = [v22 count];

    v24 = (v88 + 1) % v23;
    [(CRLPathKnob *)self setSubpathIndex:v87];
    v25 = [v21 nodes];
    v26 = [v25 objectAtIndexedSubscript:v24];
    [(CRLPathKnob *)self setNode:v26];

    v27 = [v21 nodes];
    v28 = [v27 objectAtIndexedSubscript:v88];
    [(CRLPathKnob *)self setPrevNode:v28];

    if ([(CRLCanvasKnob *)self tag]== 24)
    {
      v29 = v88;
    }

    else
    {
      v29 = v24;
    }

    [(CRLPathKnob *)self setNodeIndex:v29, *&v81];
    if ([(CRLCanvasKnob *)self tag]!= 24)
    {
      v30 = [(CRLPathKnob *)self prevNode];
      if ([v30 type] == 1)
      {
        v31 = [(CRLPathKnob *)self node];
        v32 = [v31 type];

        if (v32 == 1)
        {
          v18 = 0;
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    v33 = [(CRLPathKnob *)self prevNode];
    [v33 nodePoint];
    v35 = v34;
    v37 = v36;
    v91.a = v34;
    v91.b = v36;
    v38 = [(CRLPathKnob *)self prevNode];
    [v38 outControlPoint];
    v40 = v39;
    v42 = v41;
    v91.c = v39;
    v91.d = v41;
    v43 = [(CRLPathKnob *)self node];
    [v43 inControlPoint];
    v45 = v44;
    v47 = v46;
    v91.tx = v44;
    v91.ty = v46;
    v48 = [(CRLPathKnob *)self node];
    [v48 nodePoint];
    v50 = v49;
    v52 = v51;
    v92 = v49;
    v93 = v51;

    if (sub_10011ECC8(v35, v37, v40, v42) && sub_10011ECC8(v45, v47, v50, v52))
    {
      v91.c = sub_100120ABC(v35, v37, v50, v52, 0.333333333);
      v91.d = v53;
      v91.tx = sub_100120ABC(v35, v37, v50, v52, 0.666666667);
      v91.ty = v54;
    }

    v55 = sub_10011F20C(&v91, v86);
    v82 = v55;
    v85 = v56;
    if (v10)
    {
      [v10 naturalToEditablePathSpaceTransform];
      v55 = v82;
      v56 = v85;
      v58 = *&v89.a;
      v57 = *&v89.c;
      v59 = *&v89.tx;
    }

    else
    {
      v59 = 0uLL;
      v58 = 0uLL;
      v57 = 0uLL;
    }

    [(CRLCanvasKnob *)self setPosition:vaddq_f64(v59, vmlaq_n_f64(vmulq_n_f64(v57, v56), v58, v55)), *&v82];
    [(CRLPathKnob *)self setTValue:v86];
    v60 = v86;
    if (v86 >= 0.5)
    {
      v69 = v92;
      v70 = v93;
      v71 = sub_100120090(v83, v85, v92, v93);
      c = v91.c;
      d = v91.d;
      v74 = sub_100120090(v91.a, v91.b, v91.c, v91.d);
      v67 = v71 / (v74 + sub_100120090(c, d, v69, v70));
      v68 = (1.0 - v60) * (1.0 - v60);
    }

    else
    {
      a = v91.a;
      b = v91.b;
      v63 = sub_100120090(v83, v85, v91.a, v91.b);
      tx = v91.tx;
      ty = v91.ty;
      v66 = sub_100120090(a, b, v91.tx, v91.ty);
      v67 = v63 / (v66 + sub_100120090(tx, ty, v92, v93));
      v68 = v60 * v60;
    }

    [(CRLPathKnob *)self setBendParameter:v67 / v68];
    v75 = *a5;
    v76 = [v15 interactiveCanvasController];
    [v76 viewScale];
    v78 = v75 * v77;
    [(CRLCanvasKnob *)self radius];
    v18 = v78 < v79;

    goto LABEL_28;
  }

  v90.receiver = self;
  v90.super_class = CRLPathKnob;
  return [(CRLCanvasKnob *)&v90 isHitByUnscaledPoint:a4 inputType:a5 returningDistance:x, y];
}

- (id)underlayRenderableForRep:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasKnob *)self tag]== 18 || [(CRLCanvasKnob *)self tag]== 19)
  {
    if (!self->_handleLine)
    {
      v5 = +[CRLCanvasShapeRenderable renderable];
      handleLine = self->_handleLine;
      self->_handleLine = v5;

      [(CRLCanvasShapeRenderable *)self->_handleLine setFillColor:0];
      v7 = [CRLColor colorWithWhite:0.5 alpha:1.0];
      -[CRLCanvasShapeRenderable setStrokeColor:](self->_handleLine, "setStrokeColor:", [v7 CGColor]);

      [(CRLCanvasShapeRenderable *)self->_handleLine setLineWidth:1.0];
    }

    [(CRLPathKnob *)self p_underlayRenderableTransformForRep:v4, 0, 0, 0, 0, 0, 0];
    Mutable = CGPathCreateMutable();
    [(CRLBezierNode *)self->_node nodePoint];
    v10 = v9;
    [(CRLBezierNode *)self->_node nodePoint];
    CGPathMoveToPoint(Mutable, &v20, v10, v11);
    v12 = [(CRLCanvasKnob *)self tag];
    node = self->_node;
    if (v12 == 18)
    {
      [(CRLBezierNode *)node inControlPoint];
      v15 = v14;
      [(CRLBezierNode *)self->_node inControlPoint];
    }

    else
    {
      [(CRLBezierNode *)node outControlPoint];
      v15 = v17;
      [(CRLBezierNode *)self->_node outControlPoint];
    }

    CGPathAddLineToPoint(Mutable, &v20, v15, v16);
    [(CRLCanvasShapeRenderable *)self->_handleLine setPath:Mutable];
    CGPathRelease(Mutable);
    v18 = self->_handleLine;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (CGAffineTransform)p_underlayRenderableTransformForRep:(SEL)a3
{
  v5 = a4;
  v6 = [v5 interactiveCanvasController];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v7 = [v5 layout];
  v8 = v7;
  if (v7)
  {
    [v7 pureTransformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  [v6 viewScale];
  v10 = v9;
  [v6 viewScale];
  CGAffineTransformMakeScale(&t2, v10, v11);
  CGAffineTransformConcat(retstr, &t1, &t2);

  v12 = objc_opt_class();
  v18 = sub_1003038E0(v5, v12, 1, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLPathKnobUnderlayRenderableTransformProvider);
  v19 = v18;
  if (v18)
  {
    v20 = *&retstr->c;
    *&t2.a = *&retstr->a;
    *&t2.c = v20;
    *&t2.tx = *&retstr->tx;
    [v18 pathKnobUnderlayRenderableTransform:&t2];
    v21 = *&t1.c;
    *&retstr->a = *&t1.a;
    *&retstr->c = v21;
    *&retstr->tx = *&t1.tx;
  }

  return result;
}

- (id)knobImage
{
  if ([(CRLCanvasKnob *)self tag]== 18 || [(CRLCanvasKnob *)self tag]== 19)
  {
    v3 = @"CRLCanvasKnobPathControl";
    goto LABEL_4;
  }

  if ([(CRLCanvasKnob *)self tag]== 20)
  {
    goto LABEL_8;
  }

  if ([(CRLCanvasKnob *)self tag]== 22 || [(CRLCanvasKnob *)self tag]== 24)
  {
    if ([(CRLPathKnob *)self hovering])
    {
      if ([(CRLPathKnob *)self hoveringSharp])
      {
        v3 = @"CRLCanvasKnobPathLine";
      }

      else
      {
        v3 = @"CRLCanvasKnobPathSmooth";
      }
    }

    else
    {
      v3 = @"CRLCanvasKnobPathControlNew";
    }
  }

  else
  {
    if ([(CRLCanvasKnob *)self tag]== 21)
    {
LABEL_8:
      v3 = @"CRLCanvasKnobPathControlSmooth";
      goto LABEL_4;
    }

    v6 = [(CRLBezierNode *)self->_node type];
    node = self->_node;
    if (v6 == 1)
    {
      v8 = [(CRLBezierNode *)node isSelected];
      v9 = @"CRLCanvasKnobPathLine";
      v10 = @"CRLCanvasKnobPathLineSelected";
    }

    else
    {
      v11 = [(CRLBezierNode *)node type];
      v8 = [(CRLBezierNode *)self->_node isSelected];
      if (v11 == 3)
      {
        v9 = @"CRLCanvasKnobPathSmooth";
        v10 = @"CRLCanvasKnobPathSmoothSelected";
      }

      else
      {
        v9 = @"CRLCanvasKnobPathBezier";
        v10 = @"CRLCanvasKnobPathBezierSelected";
      }
    }

    if (v8)
    {
      v9 = v10;
    }

    v3 = v9;
  }

LABEL_4:
  v4 = [CRLImage imageNamed:v3];

  return v4;
}

- (void)updateImage
{
  v3 = [(CRLCanvasKnob *)self rep];

  if (v3)
  {
    v4 = [(CRLPathKnob *)self knobImage];
    if (v4)
    {
      v8 = v4;
      v5 = [(CRLCanvasKnob *)self renderable];
      [v8 size];
      [v5 setBounds:sub_10011ECB4()];
      v6 = [(CRLCanvasKnob *)self rep];
      v7 = [v6 canvas];
      [v7 contentsScale];
      [v5 setContents:{objc_msgSend(v8, "CGImageForContentsScale:")}];

      v4 = v8;
    }
  }
}

- (void)updatePositionWithTransform:(CGAffineTransform *)a3
{
  v5 = [(CRLCanvasKnob *)self tag];
  if (v5 > 19)
  {
    switch(v5)
    {
      case 20:
        [(CRLBezierNode *)self->_node nodePoint];
        v33.f64[0] = v17;
        v33.f64[1] = v18;
        [(CRLBezierNode *)self->_node inControlPoint];
        v34 = v19;
        v35 = v20;
        v21 = 136;
        [(CRLBezierNode *)self->_prevNode outControlPoint];
        break;
      case 21:
        [(CRLBezierNode *)self->_node nodePoint];
        v33.f64[0] = v25;
        v33.f64[1] = v26;
        [(CRLBezierNode *)self->_node outControlPoint];
        v34 = v27;
        v35 = v28;
        v21 = 128;
        [(CRLBezierNode *)self->_nextNode inControlPoint];
        break;
      case 22:
        [(CRLBezierNode *)self->_node nodePoint];
        v33.f64[0] = v8;
        v33.f64[1] = v9;
        [(CRLBezierNode *)self->_node outControlPoint];
        v34 = v10;
        v35 = v11;
        [(CRLBezierNode *)self->_nextNode inControlPoint];
        v36 = v12;
        v37 = v13;
        [(CRLBezierNode *)self->_nextNode nodePoint];
        v38 = v14;
        v39 = v15;
        v16 = 0.5;
        goto LABEL_18;
      default:
        return;
    }

    v36 = v22;
    v37 = v23;
    [*(&self->super.super.isa + v21) nodePoint];
    v38 = v29;
    v39 = v30;
    v16 = sub_1001F3D88(&v33);
LABEL_18:
    v31 = sub_10011F20C(&v33, v16);
    [(CRLCanvasKnob *)self setPosition:vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v32), *&a3->a, v31))];
    return;
  }

  switch(v5)
  {
    case 17:
      [(CRLBezierNode *)self->_node nodePoint];
      break;
    case 18:
      [(CRLBezierNode *)self->_node inControlPoint];
      break;
    case 19:
      [(CRLBezierNode *)self->_node outControlPoint];
      break;
    default:
      return;
  }

  v24 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v7), *&a3->a, v6));

  [(CRLCanvasKnob *)self setPosition:*&v24];
}

@end