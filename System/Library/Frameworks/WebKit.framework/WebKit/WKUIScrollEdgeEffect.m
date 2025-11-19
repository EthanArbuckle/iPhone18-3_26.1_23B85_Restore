@interface WKUIScrollEdgeEffect
- (BOOL)isHidden;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (WKUIScrollEdgeEffect)initWithScrollView:(id)a3 scrollEdgeEffect:(id)a4 boxSide:(unsigned __int8)a5;
- (id)description;
- (void)_setHidden:(BOOL)a3 fromSource:(unsigned __int8)a4;
- (void)setStyle:(id)a3;
@end

@implementation WKUIScrollEdgeEffect

- (WKUIScrollEdgeEffect)initWithScrollView:(id)a3 scrollEdgeEffect:(id)a4 boxSide:(unsigned __int8)a5
{
  v11.receiver = self;
  v11.super_class = WKUIScrollEdgeEffect;
  v8 = [(WKUIScrollEdgeEffect *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scrollView, a3);
    v9->_boxSide = a5;
    objc_storeWeak(&v9->_effect, a4);
    v9->_hiddenSources.m_storage = 0;
  }

  return v9;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = WKUIScrollEdgeEffect;
  if ([(WKUIScrollEdgeEffect *)&v6 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    objc_loadWeak(&self->_effect);
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v6.receiver = self;
  v6.super_class = WKUIScrollEdgeEffect;
  if ([(WKUIScrollEdgeEffect *)&v6 isKindOfClass:?])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_loadWeak(&self->_effect);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isHidden
{
  Weak = objc_loadWeak(&self->_effect);

  return [Weak isHidden];
}

- (void)_setHidden:(BOOL)a3 fromSource:(unsigned __int8)a4
{
  m_storage = self->_hiddenSources.m_storage;
  v5 = self->_hiddenSources.m_storage != 0;
  v6 = m_storage & ~a4;
  v7 = m_storage | a4;
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  self->_hiddenSources.m_storage = v8;
  if (v5 != (v8 != 0))
  {
    v10 = NSStringFromSelector(sel_isHidden);
    v12 = v10;
    if (v10)
    {
      v11 = v10;
      v10 = v12;
    }

    [(WKUIScrollEdgeEffect *)self willChangeValueForKey:v10];
    [objc_loadWeak(&self->_effect) setHidden:v8 != 0];
    [(WKUIScrollEdgeEffect *)self didChangeValueForKey:v12];
    if (v12)
    {
    }
  }
}

- (void)setStyle:(id)a3
{
  usesHardStyle = self->_usesHardStyle;
  self->_usesHardStyle = [a3 isEqual:{objc_msgSend(MEMORY[0x1E69DCED8], "hardStyle")}];
  [objc_loadWeak(&self->_effect) setStyle:a3];
  if (!self->_boxSide && usesHardStyle != self->_usesHardStyle)
  {
    Weak = objc_loadWeak(&self->_scrollView);

    [Weak _didChangeTopScrollEdgeEffectStyle];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [objc_loadWeak(&self->_effect) description];
  boxSide = self->_boxSide;
  if (boxSide > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1E76339F0[boxSide];
  }

  return [v3 stringWithFormat:@"<%@: %p wrapping %@ (%s)>", v4, self, v5, v7];
}

@end