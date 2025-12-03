@interface BKScrubberSliderContainerView
- (UIEdgeInsets)thumbTouchInsets;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation BKScrubberSliderContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  sessionIndicatorView = [(BKScrubberSliderContainerView *)self sessionIndicatorView];
  [sessionIndicatorView convertPoint:self fromView:{x, y}];
  v9 = [sessionIndicatorView pointInside:eventCopy withEvent:?];

  if (v9 && ([sessionIndicatorView frame], v11 = v10, v13 = v12, v15 = v14, v17 = v16, -[BKScrubberSliderContainerView thumbView](self, "thumbView"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "frame"), v20 = v19, v22 = v21, v24 = v23, v26 = v25, -[BKScrubberSliderContainerView thumbView](self, "thumbView"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(sessionIndicatorView, "convertRect:fromView:", v27, v20, v22, v24, v26), v29 = v28, v31 = v30, v33 = v32, v35 = v34, v27, v18, -[BKScrubberSliderContainerView thumbTouchInsets](self, "thumbTouchInsets"), v37 = v31 + v36, v40 = v33 - (v38 + v39), v45.size.height = v35 - (v36 + v41), v45.origin.x = v29 + v38, v45.origin.y = v37, v45.size.width = v40, v46.origin.x = v11, v46.origin.y = v13, v46.size.width = v15, v46.size.height = v17, !CGRectIntersectsRect(v45, v46)))
  {
    v42 = sessionIndicatorView;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (UIEdgeInsets)thumbTouchInsets
{
  top = self->_thumbTouchInsets.top;
  left = self->_thumbTouchInsets.left;
  bottom = self->_thumbTouchInsets.bottom;
  right = self->_thumbTouchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end