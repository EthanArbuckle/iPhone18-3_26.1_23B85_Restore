@interface CRLiOSConcreteScribbleCapableElement
- (BOOL)scribbleElementIsFocused;
- (CGRect)scaledScribbleEditingFrame;
- (CRLiOSConcreteScribbleCapableElement)initWithEditingFrame:(CGRect)a3 identifier:(id)a4 scribbleEditingBlock:(id)a5 scribbleElementIsFocusedBlock:(id)a6 shouldDelayFocus:(BOOL)a7 hitToleranceInsetsWithDefaultInsetsBlock:(id)a8;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3;
@end

@implementation CRLiOSConcreteScribbleCapableElement

- (CRLiOSConcreteScribbleCapableElement)initWithEditingFrame:(CGRect)a3 identifier:(id)a4 scribbleEditingBlock:(id)a5 scribbleElementIsFocusedBlock:(id)a6 shouldDelayFocus:(BOOL)a7 hitToleranceInsetsWithDefaultInsetsBlock:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v36.receiver = self;
  v36.super_class = CRLiOSConcreteScribbleCapableElement;
  v21 = [(CRLiOSConcreteScribbleCapableElement *)&v36 init];
  if (v21)
  {
    if (sub_10011FBD0(width, height))
    {
      v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132C1B4();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132C1DC(v35, v22);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132C288();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v23, v35);
      }

      v24 = [NSString stringWithUTF8String:"[CRLiOSConcreteScribbleCapableElement initWithEditingFrame:identifier:scribbleEditingBlock:scribbleElementIsFocusedBlock:shouldDelayFocus:hitToleranceInsetsWithDefaultInsetsBlock:]"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSConcreteScribbleCapableElement.m"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:37 isFatal:0 description:"Got empty editing frame"];
    }

    v26 = objc_retainBlock(v18);
    scribbleEditingBlock = v21->_scribbleEditingBlock;
    v21->_scribbleEditingBlock = v26;

    v21->_scaledScribbleEditingFrame.origin.x = x;
    v21->_scaledScribbleEditingFrame.origin.y = y;
    v21->_scaledScribbleEditingFrame.size.width = width;
    v21->_scaledScribbleEditingFrame.size.height = height;
    if (v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = +[NSUUID UUID];
    }

    scribbleIdentifier = v21->_scribbleIdentifier;
    v21->_scribbleIdentifier = v28;

    v21->_shouldDelayScribbleFocus = a7;
    v30 = objc_retainBlock(v19);
    scribbleElementIsFocusedBlock = v21->_scribbleElementIsFocusedBlock;
    v21->_scribbleElementIsFocusedBlock = v30;

    v32 = objc_retainBlock(v20);
    hitToleranceInsetsWithDefaultInsetsBlock = v21->_hitToleranceInsetsWithDefaultInsetsBlock;
    v21->_hitToleranceInsetsWithDefaultInsetsBlock = v32;
  }

  return v21;
}

- (BOOL)scribbleElementIsFocused
{
  v3 = [(CRLiOSConcreteScribbleCapableElement *)self scribbleElementIsFocusedBlock];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CRLiOSConcreteScribbleCapableElement *)self scribbleElementIsFocusedBlock];
  v5 = v4[2]();

  return v5;
}

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(CRLiOSConcreteScribbleCapableElement *)self hitToleranceInsetsWithDefaultInsetsBlock];

  if (v8)
  {
    v9 = [(CRLiOSConcreteScribbleCapableElement *)self hitToleranceInsetsWithDefaultInsetsBlock];
    top = v9[2](top, left, bottom, right);
    left = v10;
    bottom = v11;
    right = v12;
  }

  v13 = top;
  v14 = left;
  v15 = bottom;
  v16 = right;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CGRect)scaledScribbleEditingFrame
{
  x = self->_scaledScribbleEditingFrame.origin.x;
  y = self->_scaledScribbleEditingFrame.origin.y;
  width = self->_scaledScribbleEditingFrame.size.width;
  height = self->_scaledScribbleEditingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end