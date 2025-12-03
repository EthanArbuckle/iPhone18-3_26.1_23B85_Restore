@interface DebugFramesView
- (DebugFramesView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)registerName:(id)name color:(id)color weight:(double)weight edges:(unint64_t)edges;
- (void)setFrame:(CGRect)frame forName:(id)name;
- (void)setLayoutGuide:(id)guide forName:(id)name;
- (void)unregisterAll;
- (void)unregisterName:(id)name;
@end

@implementation DebugFramesView

- (void)drawRect:(CGRect)rect
{
  v102.receiver = self;
  v102.super_class = DebugFramesView;
  [(DebugFramesView *)&v102 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  CurrentContext = UIGraphicsGetCurrentContext();
  traitCollection = [(DebugFramesView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v7 = 5.0;
  if (userInterfaceIdiom == 5)
  {
    v7 = 10.0;
  }

  v8 = [UIFont boldSystemFontOfSize:v7];
  v9 = [(NSMutableOrderedSet *)self->_names count];
  v90 = &v90;
  __chkstk_darwin(v9);
  v11 = &v90 - 2 * v10;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  selfCopy = self;
  v93 = self->_names;
  v95 = [(NSMutableOrderedSet *)v93 countByEnumeratingWithState:&v98 objects:v105 count:16];
  if (v95)
  {
    v12 = 0;
    v94 = *v99;
    v92 = NSFontAttributeName;
    v91 = NSForegroundColorAttributeName;
    do
    {
      for (i = 0; i != v95; i = i + 1)
      {
        if (*v99 != v94)
        {
          objc_enumerationMutation(v93);
        }

        framesByName = selfCopy->_framesByName;
        v96 = *(*(&v98 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)framesByName objectForKeyedSubscript:?];
        color = [v15 color];
        if (!color)
        {
          color = +[UIColor grayColor];
        }

        v17 = v11;
        CGContextSetStrokeColorWithColor(CurrentContext, [color CGColor]);
        CGContextSetFillColorWithColor(CurrentContext, [color CGColor]);
        [v15 weight];
        v18 = 1.0;
        if (v19 >= 1.0)
        {
          [v15 weight];
          v18 = v20;
        }

        CGContextSetLineWidth(CurrentContext, v18);
        [v15 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        layoutGuide = [v15 layoutGuide];

        if (layoutGuide)
        {
          layoutGuide2 = [v15 layoutGuide];
          [layoutGuide2 layoutFrame];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          layoutGuide3 = [v15 layoutGuide];
          owningView = [layoutGuide3 owningView];
          [(DebugFramesView *)selfCopy convertRect:owningView fromView:v32, v34, v36, v38];
          v22 = v41;
          v24 = v42;
          v26 = v43;
          v28 = v44;
        }

        v11 = v17;
        v45 = v18 * 0.5;
        edges = [v15 edges];
        if (edges > 3)
        {
          if (edges == 4)
          {
            v82 = v22 + v45;
            v83 = v26 - v18;
            v130.origin.x = v82;
            v130.origin.y = v24;
            v130.size.width = v83;
            v130.size.height = v28;
            MinX = CGRectGetMinX(v130);
            v131.origin.x = v82;
            v131.origin.y = v24;
            v131.size.width = v83;
            v131.size.height = v28;
            MaxY = CGRectGetMaxY(v131);
            CGContextMoveToPoint(CurrentContext, MinX, MaxY);
            v132.origin.x = v82;
            v132.origin.y = v24;
            v132.size.width = v83;
            v132.size.height = v28;
            v86 = CGRectGetMinX(v132);
            v133.origin.x = v82;
            v133.origin.y = v24;
            v133.size.width = v83;
            v133.size.height = v28;
            v87 = CGRectGetMaxY(v133);
            CGContextAddLineToPoint(CurrentContext, v86, v87 + -10.0);
            v134.origin.x = v82;
            v134.origin.y = v24;
            v134.size.width = v83;
            v134.size.height = v28;
            MaxX = CGRectGetMaxX(v134);
            v135.origin.x = v82;
            v135.origin.y = v24;
            v135.size.width = v83;
            v135.size.height = v28;
            v89 = CGRectGetMaxY(v135);
            CGContextMoveToPoint(CurrentContext, MaxX, v89);
            v136.origin.x = v82;
            v136.origin.y = v24;
            v136.size.width = v83;
            v136.size.height = v28;
            v55 = CGRectGetMaxX(v136);
            v137.origin.x = v82;
            v137.origin.y = v24;
            v137.size.width = v83;
            v137.size.height = v28;
            v62 = CGRectGetMaxY(v137) + -10.0;
            goto LABEL_34;
          }

          if (edges == 8)
          {
            v47 = v24 + v45;
            v48 = v28 - v18;
            v113.origin.x = v22;
            v113.origin.y = v47;
            v113.size.width = v26;
            v113.size.height = v48;
            v56 = CGRectGetMaxX(v113);
            v114.origin.x = v22;
            v114.origin.y = v47;
            v114.size.width = v26;
            v114.size.height = v48;
            MinY = CGRectGetMinY(v114);
            CGContextMoveToPoint(CurrentContext, v56, MinY);
            v115.origin.x = v22;
            v115.origin.y = v47;
            v115.size.width = v26;
            v115.size.height = v48;
            v58 = CGRectGetMaxX(v115) + -10.0;
            v116.origin.x = v22;
            v116.origin.y = v47;
            v116.size.width = v26;
            v116.size.height = v48;
            v59 = CGRectGetMinY(v116);
            CGContextAddLineToPoint(CurrentContext, v58, v59);
            v117.origin.x = v22;
            v117.origin.y = v47;
            v117.size.width = v26;
            v117.size.height = v48;
            v60 = CGRectGetMaxX(v117);
            v118.origin.x = v22;
            v118.origin.y = v47;
            v118.size.width = v26;
            v118.size.height = v48;
            v61 = CGRectGetMaxY(v118);
            CGContextMoveToPoint(CurrentContext, v60, v61);
            v119.origin.x = v22;
            v119.origin.y = v47;
            v119.size.width = v26;
            v119.size.height = v48;
            v55 = CGRectGetMaxX(v119) + -10.0;
LABEL_21:
            v120.origin.x = v22;
            v120.origin.y = v47;
            v120.size.width = v26;
            v120.size.height = v48;
            v62 = CGRectGetMaxY(v120);
LABEL_34:
            CGContextAddLineToPoint(CurrentContext, v55, v62);
            CGContextStrokePath(CurrentContext);
            goto LABEL_35;
          }
        }

        else
        {
          if (edges == 1)
          {
            v74 = v22 + v45;
            v75 = v26 - v18;
            v122.origin.x = v74;
            v122.origin.y = v24;
            v122.size.width = v75;
            v122.size.height = v28;
            v76 = CGRectGetMinX(v122);
            v123.origin.x = v74;
            v123.origin.y = v24;
            v123.size.width = v75;
            v123.size.height = v28;
            v77 = CGRectGetMinY(v123);
            CGContextMoveToPoint(CurrentContext, v76, v77);
            v124.origin.x = v74;
            v124.origin.y = v24;
            v124.size.width = v75;
            v124.size.height = v28;
            v78 = CGRectGetMinX(v124);
            v125.origin.x = v74;
            v125.origin.y = v24;
            v125.size.width = v75;
            v125.size.height = v28;
            v79 = CGRectGetMinY(v125);
            CGContextAddLineToPoint(CurrentContext, v78, v79 + 10.0);
            v126.origin.x = v74;
            v126.origin.y = v24;
            v126.size.width = v75;
            v126.size.height = v28;
            v80 = CGRectGetMaxX(v126);
            v127.origin.x = v74;
            v127.origin.y = v24;
            v127.size.width = v75;
            v127.size.height = v28;
            v81 = CGRectGetMinY(v127);
            CGContextMoveToPoint(CurrentContext, v80, v81);
            v128.origin.x = v74;
            v128.origin.y = v24;
            v128.size.width = v75;
            v128.size.height = v28;
            v55 = CGRectGetMaxX(v128);
            v129.origin.x = v74;
            v129.origin.y = v24;
            v129.size.width = v75;
            v129.size.height = v28;
            v62 = CGRectGetMinY(v129) + 10.0;
            goto LABEL_34;
          }

          if (edges == 2)
          {
            v47 = v24 + v45;
            v48 = v28 - v18;
            v106.origin.x = v22;
            v106.origin.y = v47;
            v106.size.width = v26;
            v106.size.height = v48;
            v49 = CGRectGetMinX(v106);
            v107.origin.x = v22;
            v107.origin.y = v47;
            v107.size.width = v26;
            v107.size.height = v48;
            v50 = CGRectGetMinY(v107);
            CGContextMoveToPoint(CurrentContext, v49, v50);
            v108.origin.x = v22;
            v108.origin.y = v47;
            v108.size.width = v26;
            v108.size.height = v48;
            v51 = CGRectGetMinX(v108) + 10.0;
            v109.origin.x = v22;
            v109.origin.y = v47;
            v109.size.width = v26;
            v109.size.height = v48;
            v52 = CGRectGetMinY(v109);
            CGContextAddLineToPoint(CurrentContext, v51, v52);
            v110.origin.x = v22;
            v110.origin.y = v47;
            v110.size.width = v26;
            v110.size.height = v48;
            v53 = CGRectGetMinX(v110);
            v111.origin.x = v22;
            v111.origin.y = v47;
            v111.size.width = v26;
            v111.size.height = v48;
            v54 = CGRectGetMaxY(v111);
            CGContextMoveToPoint(CurrentContext, v53, v54);
            v112.origin.x = v22;
            v112.origin.y = v47;
            v112.size.width = v26;
            v112.size.height = v48;
            v55 = CGRectGetMinX(v112) + 10.0;
            goto LABEL_21;
          }
        }

        v63 = v22 + v45;
        v64 = v24 + v45;
        v121.size.width = v26 - v18;
        v121.size.height = v28 - v18;
        v121.origin.x = v63;
        v121.origin.y = v64;
        CGContextAddRect(CurrentContext, v121);
        CGContextStrokePath(CurrentContext);
        v65 = v63 + 2.0;
        v66 = v64 + 1.0;
        if (v12)
        {
          for (j = 0; j != v12; ++j)
          {
            v68 = &v17[2 * j];
            v69 = v68[1];
            if (v65 == *v68 && v66 == v69)
            {
              do
              {
                [v8 lineHeight];
                v66 = v71 + v66;
              }

              while (v66 == v69);
            }
          }
        }

        v103[0] = v92;
        v103[1] = v91;
        v104[0] = v8;
        v104[1] = color;
        v72 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:2];
        [v96 drawAtPoint:v72 withAttributes:{v65, v66}];

        v73 = &v17[2 * v12];
        *v73 = v65;
        v73[1] = v66;
        ++v12;
LABEL_35:
      }

      v95 = [(NSMutableOrderedSet *)v93 countByEnumeratingWithState:&v98 objects:v105 count:16];
    }

    while (v95);
  }
}

- (void)setLayoutGuide:(id)guide forName:(id)name
{
  guideCopy = guide;
  v6 = [(NSMutableDictionary *)self->_framesByName objectForKeyedSubscript:name];
  v7 = v6;
  if (v6)
  {
    layoutGuide = [v6 layoutGuide];

    if (layoutGuide != guideCopy)
    {
      [v7 setLayoutGuide:guideCopy];
      [(DebugFramesView *)self setNeedsDisplay];
    }
  }
}

- (void)setFrame:(CGRect)frame forName:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [(NSMutableDictionary *)self->_framesByName objectForKeyedSubscript:name];
  v10 = v9;
  if (v9)
  {
    v12 = v9;
    [v9 frame];
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v11 = CGRectEqualToRect(v14, v15);
    v10 = v12;
    if (!v11)
    {
      [v12 setFrame:{x, y, width, height}];
      [(DebugFramesView *)self setNeedsDisplay];
      v10 = v12;
    }
  }
}

- (void)unregisterAll
{
  [(NSMutableOrderedSet *)self->_names removeAllObjects];
  framesByName = self->_framesByName;

  [(NSMutableDictionary *)framesByName removeAllObjects];
}

- (void)unregisterName:(id)name
{
  if (name)
  {
    names = self->_names;
    nameCopy = name;
    [(NSMutableOrderedSet *)names removeObject:nameCopy];
    [(NSMutableDictionary *)self->_framesByName removeObjectForKey:nameCopy];
  }
}

- (void)registerName:(id)name color:(id)color weight:(double)weight edges:(unint64_t)edges
{
  nameCopy = name;
  colorCopy = color;
  if (nameCopy)
  {
    v11 = [(NSMutableDictionary *)self->_framesByName objectForKeyedSubscript:nameCopy];
    if (!v11)
    {
      v11 = objc_alloc_init(DebugFrameConfig);
      [(NSMutableDictionary *)self->_framesByName setObject:v11 forKeyedSubscript:nameCopy];
    }

    [(DebugFrameConfig *)v11 setColor:colorCopy];
    [(DebugFrameConfig *)v11 setWeight:weight];
    [(DebugFrameConfig *)v11 setEdges:edges];
    [(NSMutableOrderedSet *)self->_names addObject:nameCopy];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = DebugFramesView;
  [(DebugFramesView *)&v4 layoutSubviews];
  superview = [(DebugFramesView *)self superview];
  [superview bringSubviewToFront:self];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = DebugFramesView;
  [(DebugFramesView *)&v4 didMoveToSuperview];
  superview = [(DebugFramesView *)self superview];
  [superview bringSubviewToFront:self];
}

- (DebugFramesView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = DebugFramesView;
  v3 = [(DebugFramesView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableOrderedSet orderedSet];
    names = v3->_names;
    v3->_names = v4;

    v6 = +[NSMutableDictionary dictionary];
    framesByName = v3->_framesByName;
    v3->_framesByName = v6;

    v8 = +[UIColor clearColor];
    [(DebugFramesView *)v3 setBackgroundColor:v8];

    [(DebugFramesView *)v3 setUserInteractionEnabled:0];
    [(DebugFramesView *)v3 setContentMode:3];
  }

  return v3;
}

@end