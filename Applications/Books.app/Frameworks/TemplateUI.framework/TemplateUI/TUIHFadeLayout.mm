@interface TUIHFadeLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
- (void)onChildrenUpdated;
@end

@implementation TUIHFadeLayout

- (void)onChildrenUpdated
{
  v7.receiver = self;
  v7.super_class = TUIHFadeLayout;
  [(TUILayout *)&v7 onChildrenUpdated];
  content = self->_content;
  self->_content = 0;

  decorator = self->_decorator;
  self->_decorator = 0;

  children = [(TUILayout *)self children];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_38DBC;
  v6[3] = &unk_25ECF8;
  v6[4] = self;
  [children enumerateObjectsUsingBlock:v6];
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  content = self->_content;
  if (content)
  {
    validatedIntrinsicWidth = [(TUILayout *)content validatedIntrinsicWidth];
    v7 = v6;
  }

  else
  {
    validatedIntrinsicWidth = 0x7FC000007FC00000;
    v7 = 0x200007FC00000;
  }

  v8 = [(TUILayout *)self box];
  [v8 padding];
  if (v9 <= -3.40282347e38)
  {
    v12 = 0x7FC00000FF7FFFFFLL;
  }

  else
  {
    v10 = v9 < 3.40282347e38;
    v11 = v9;
    if (v10)
    {
      v12 = LODWORD(v11) | 0x7FC0000000000000;
    }

    else
    {
      v12 = 0x7FC000007F7FFFFFLL;
    }
  }

  decorator = self->_decorator;
  if (decorator)
  {
    validatedIntrinsicWidth2 = [(TUILayout *)decorator validatedIntrinsicWidth];
  }

  else
  {
    validatedIntrinsicWidth2 = 0x7FC000007FC00000;
    v15 = 0x200007FC00000;
  }

  v17[0] = validatedIntrinsicWidth;
  v17[1] = v7;
  v17[2] = v12;
  v17[3] = 0x1700007FC00000;
  v17[4] = validatedIntrinsicWidth2;
  v17[5] = v15;
  return TUILengthSum(v17, 3);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  content = self->_content;
  if (content)
  {
    return [(TUILayout *)content validatedIntrinsicHeight];
  }

  else
  {
    return 0x7FC000007FC00000;
  }
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self containingHeight];
  v6 = v5;
  [(TUILayout *)self->_content setContainingWidth:v4];
  [(TUILayout *)self->_content setContainingHeight:v6];
  [(TUILayout *)self->_content validateLayout];
  [(TUILayout *)self->_decorator setContainingWidth:v4];
  [(TUILayout *)self->_decorator setContainingHeight:v6];
  [(TUILayout *)self->_decorator validateLayout];
  __p = 0;
  v10 = 0;
  v11 = 0;
  v8[0] = self->_content;
  sub_39158(&__p, v8);
  v8[0] = self->_decorator;
  sub_39158(&__p, v8);
  v8[0] = __p;
  v8[1] = v10;
  v7 = sub_3922C(v8);
  *&self->_heightAbovePivot = v8[2];
  [(TUILayout *)self setComputedNaturalSize:v4, v7];
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  if (kind < 4)
  {
    v37 = 0;
  }

  else
  {
    model = [(TUILayout *)self model];
    [contextCopy contentsScale];
    v9 = v8;
    v10 = [contextCopy renderModelForLayout:self->_content kind:6];
    [(TUILayout *)self->_content erasableInsetsForContentsScale:v9];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [contextCopy renderModelForLayout:self->_decorator kind:6];
    v39 = v16;
    v40 = v14;
    v41 = v12;
    identifier = [model identifier];
    [(TUILayout *)self computedNaturalSize];
    v23 = TUISizeRoundedForScale(v21, v22, v9);
    v25 = v24;
    [(TUILayout *)self->_content computedOrigin];
    v27 = v26;
    v29 = v28;
    [(TUILayout *)self->_decorator computedOrigin];
    v31 = v30;
    v33 = v32;
    [model padding];
    v35 = v34;
    [model gradientWidth];
    v37 = [TUIOverlayFadeView renderModelWithIdentifier:identifier size:v10 content:v19 contentOrigin:[(TUILayout *)self computedLayoutDirection] contentErasableInsets:v23 overlay:v25 overlayOrigin:v27 padding:v29 gradientWidth:v41 layoutDirection:v40, v39, v18, v31, v33, v35, v36];
  }

  return v37;
}

@end