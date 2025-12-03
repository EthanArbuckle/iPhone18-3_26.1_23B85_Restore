@interface CRLPathKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance;
- (BOOL)obscuresKnob:(id)knob;
- (BOOL)overlapsWithKnob:(id)knob;
- (CGAffineTransform)p_underlayRenderableTransformForRep:(SEL)rep;
- (CRLPathKnob)initWithInControlForNode:(id)node onRep:(id)rep;
- (CRLPathKnob)initWithNode:(id)node onRep:(id)rep;
- (CRLPathKnob)initWithOutControlForNode:(id)node onRep:(id)rep;
- (id)initBendKnobOnRep:(id)rep;
- (id)knobImage;
- (id)p_knobHitPath;
- (id)underlayRenderableForRep:(id)rep;
- (void)setHovering:(BOOL)hovering;
- (void)setHoveringSharp:(BOOL)sharp;
- (void)updateImage;
- (void)updatePositionWithTransform:(CGAffineTransform *)transform;
@end

@implementation CRLPathKnob

- (id)initBendKnobOnRep:(id)rep
{
  v4.receiver = self;
  v4.super_class = CRLPathKnob;
  return [(CRLCanvasKnob *)&v4 initWithType:0 position:23 radius:rep tag:CGPointZero.x onRep:CGPointZero.y, 10.0];
}

- (CRLPathKnob)initWithNode:(id)node onRep:(id)rep
{
  nodeCopy = node;
  repCopy = rep;
  [nodeCopy nodePoint];
  v12.receiver = self;
  v12.super_class = CRLPathKnob;
  v9 = [CRLCanvasKnob initWithType:"initWithType:position:radius:tag:onRep:" position:0 radius:17 tag:repCopy onRep:?];

  if (v9)
  {
    objc_storeStrong(&v9->_node, node);
    p_knobHitPath = [(CRLPathKnob *)v9 p_knobHitPath];
    [(CRLCanvasKnob *)v9 setHitRegionPath:p_knobHitPath];
  }

  return v9;
}

- (CRLPathKnob)initWithInControlForNode:(id)node onRep:(id)rep
{
  nodeCopy = node;
  repCopy = rep;
  [nodeCopy inControlPoint];
  v12.receiver = self;
  v12.super_class = CRLPathKnob;
  v9 = [CRLCanvasKnob initWithType:"initWithType:position:radius:tag:onRep:" position:0 radius:18 tag:repCopy onRep:?];

  if (v9)
  {
    objc_storeStrong(&v9->_node, node);
    p_knobHitPath = [(CRLPathKnob *)v9 p_knobHitPath];
    [(CRLCanvasKnob *)v9 setHitRegionPath:p_knobHitPath];
  }

  return v9;
}

- (CRLPathKnob)initWithOutControlForNode:(id)node onRep:(id)rep
{
  nodeCopy = node;
  repCopy = rep;
  [nodeCopy outControlPoint];
  v12.receiver = self;
  v12.super_class = CRLPathKnob;
  v9 = [CRLCanvasKnob initWithType:"initWithType:position:radius:tag:onRep:" position:0 radius:19 tag:repCopy onRep:?];

  if (v9)
  {
    objc_storeStrong(&v9->_node, node);
    p_knobHitPath = [(CRLPathKnob *)v9 p_knobHitPath];
    [(CRLCanvasKnob *)v9 setHitRegionPath:p_knobHitPath];
  }

  return v9;
}

- (id)p_knobHitPath
{
  v2 = sub_10011EC70(CGPointZero.x, CGPointZero.y, 20.0);

  return [CRLBezierPath bezierPathWithOvalInRect:v2];
}

- (void)setHovering:(BOOL)hovering
{
  if (self->_hovering != hovering)
  {
    self->_hovering = hovering;
    [(CRLPathKnob *)self updateImage];
  }
}

- (void)setHoveringSharp:(BOOL)sharp
{
  if (self->_hoveringSharp != sharp)
  {
    self->_hoveringSharp = sharp;
    [(CRLPathKnob *)self updateImage];
  }
}

- (BOOL)obscuresKnob:(id)knob
{
  knobCopy = knob;
  if ([knobCopy tag] == 23)
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
    v5 = [(CRLCanvasKnob *)&v7 obscuresKnob:knobCopy];
  }

  return v5;
}

- (BOOL)overlapsWithKnob:(id)knob
{
  knobCopy = knob;
  if ([knobCopy tag] == 23 || -[CRLCanvasKnob tag](self, "tag") == 23)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLPathKnob;
    v5 = [(CRLCanvasKnob *)&v7 overlapsWithKnob:knobCopy];
  }

  return v5;
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  if ([(CRLCanvasKnob *)self tag]== 23 || [(CRLCanvasKnob *)self tag]== 24)
  {
    v10 = [(CRLCanvasKnob *)self rep];
    editablePathSource = [v10 editablePathSource];
    v12 = editablePathSource;
    if (!editablePathSource || ([editablePathSource nodes], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, !v14))
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
    *distance = v19;
    subpaths = [v12 subpaths];
    v21 = [subpaths objectAtIndexedSubscript:v87];

    nodes = [v21 nodes];
    v23 = [nodes count];

    v24 = (v88 + 1) % v23;
    [(CRLPathKnob *)self setSubpathIndex:v87];
    nodes2 = [v21 nodes];
    v26 = [nodes2 objectAtIndexedSubscript:v24];
    [(CRLPathKnob *)self setNode:v26];

    nodes3 = [v21 nodes];
    v28 = [nodes3 objectAtIndexedSubscript:v88];
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
      prevNode = [(CRLPathKnob *)self prevNode];
      if ([prevNode type] == 1)
      {
        node = [(CRLPathKnob *)self node];
        type = [node type];

        if (type == 1)
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

    prevNode2 = [(CRLPathKnob *)self prevNode];
    [prevNode2 nodePoint];
    v35 = v34;
    v37 = v36;
    v91.a = v34;
    v91.b = v36;
    prevNode3 = [(CRLPathKnob *)self prevNode];
    [prevNode3 outControlPoint];
    v40 = v39;
    v42 = v41;
    v91.c = v39;
    v91.d = v41;
    node2 = [(CRLPathKnob *)self node];
    [node2 inControlPoint];
    v45 = v44;
    v47 = v46;
    v91.tx = v44;
    v91.ty = v46;
    node3 = [(CRLPathKnob *)self node];
    [node3 nodePoint];
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
    v75 = *distance;
    interactiveCanvasController = [v15 interactiveCanvasController];
    [interactiveCanvasController viewScale];
    v78 = v75 * v77;
    [(CRLCanvasKnob *)self radius];
    v18 = v78 < v79;

    goto LABEL_28;
  }

  v90.receiver = self;
  v90.super_class = CRLPathKnob;
  return [(CRLCanvasKnob *)&v90 isHitByUnscaledPoint:type inputType:distance returningDistance:x, y];
}

- (id)underlayRenderableForRep:(id)rep
{
  repCopy = rep;
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

    [(CRLPathKnob *)self p_underlayRenderableTransformForRep:repCopy, 0, 0, 0, 0, 0, 0];
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

- (CGAffineTransform)p_underlayRenderableTransformForRep:(SEL)rep
{
  v5 = a4;
  interactiveCanvasController = [v5 interactiveCanvasController];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  layout = [v5 layout];
  v8 = layout;
  if (layout)
  {
    [layout pureTransformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  [interactiveCanvasController viewScale];
  v10 = v9;
  [interactiveCanvasController viewScale];
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

    type = [(CRLBezierNode *)self->_node type];
    node = self->_node;
    if (type == 1)
    {
      isSelected = [(CRLBezierNode *)node isSelected];
      v9 = @"CRLCanvasKnobPathLine";
      v10 = @"CRLCanvasKnobPathLineSelected";
    }

    else
    {
      type2 = [(CRLBezierNode *)node type];
      isSelected = [(CRLBezierNode *)self->_node isSelected];
      if (type2 == 3)
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

    if (isSelected)
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
    knobImage = [(CRLPathKnob *)self knobImage];
    if (knobImage)
    {
      v8 = knobImage;
      renderable = [(CRLCanvasKnob *)self renderable];
      [v8 size];
      [renderable setBounds:sub_10011ECB4()];
      v6 = [(CRLCanvasKnob *)self rep];
      canvas = [v6 canvas];
      [canvas contentsScale];
      [renderable setContents:{objc_msgSend(v8, "CGImageForContentsScale:")}];

      knobImage = v8;
    }
  }
}

- (void)updatePositionWithTransform:(CGAffineTransform *)transform
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
    [(CRLCanvasKnob *)self setPosition:vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v32), *&transform->a, v31))];
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

  v24 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v7), *&transform->a, v6));

  [(CRLCanvasKnob *)self setPosition:*&v24];
}

@end