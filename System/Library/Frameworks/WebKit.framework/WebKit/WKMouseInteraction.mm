@interface WKMouseInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)locationInView:(id)a3;
- (UITouch)mouseTouch;
- (WKMouseInteraction)initWithDelegate:(id)a3;
- (id).cxx_construct;
- (id)_activeGesture;
- (optional<WebKit::NativeWebMouseEvent>)createMouseEventWithType:(optional<WebKit:(optional<WebKit::NativeWebMouseEvent> *)self :NativeWebMouseEvent> *__return_ptr)retstr wasCancelled:;
- (void)_forEachGesture:(id)a3;
- (void)_hoverGestureRecognized:(id)a3;
- (void)_resetCachedState;
- (void)_updateMouseTouches:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation WKMouseInteraction

- (id).cxx_construct
{
  *(self + 56) = 0;
  *(self + 72) = 0;
  *(self + 80) = 0;
  *(self + 88) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 5) = 0;
  return self;
}

- (void)_resetCachedState
{
  *&self->_touching = 256;
  self->_lastLocation.var0.__null_state_ = 0;
  self->_lastLocation.__engaged_ = 0;
  self->_pressedButtonMask.var0.__null_state_ = 0;
  self->_pressedButtonMask.__engaged_ = 0;
  m_ptr = self->_currentHoverTouch.m_ptr;
  self->_currentHoverTouch.m_ptr = 0;
  if (m_ptr)
  {
  }

  v4 = self->_currentMouseTouch.m_ptr;
  self->_currentMouseTouch.m_ptr = 0;
  if (v4)
  {
  }
}

- (WKMouseInteraction)initWithDelegate:(id)a3
{
  v13.receiver = self;
  v13.super_class = WKMouseInteraction;
  v4 = [(WKMouseInteraction *)&v13 init];
  if (v4)
  {
    v5 = [[WKMouseTouchGestureRecognizer alloc] initWithInteraction:v4];
    m_ptr = v4->_mouseTouchGestureRecognizer.m_ptr;
    v4->_mouseTouchGestureRecognizer.m_ptr = v5;
    if (m_ptr)
    {

      v5 = v4->_mouseTouchGestureRecognizer.m_ptr;
    }

    [(WKMouseTouchGestureRecognizer *)v5 setName:@"WKMouseTouch"];
    v7 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel__hoverGestureRecognized_];
    v8 = v4->_pencilHoverGestureRecognizer.m_ptr;
    v4->_pencilHoverGestureRecognizer.m_ptr = v7;
    if (v8)
    {

      v7 = v4->_pencilHoverGestureRecognizer.m_ptr;
    }

    [(UIHoverGestureRecognizer *)v7 setName:@"WKPencilHover"];
    v9 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel__hoverGestureRecognized_];
    v10 = v4->_mouseHoverGestureRecognizer.m_ptr;
    v4->_mouseHoverGestureRecognizer.m_ptr = v9;
    if (v10)
    {

      v9 = v4->_mouseHoverGestureRecognizer.m_ptr;
    }

    [(UIHoverGestureRecognizer *)v9 setName:@"WKMouseHover"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__WKMouseInteraction_initWithDelegate___block_invoke;
    v12[3] = &unk_1E76338D0;
    v12[4] = v4;
    [(WKMouseInteraction *)v4 _forEachGesture:v12];
    [(UIHoverGestureRecognizer *)v4->_pencilHoverGestureRecognizer.m_ptr setAllowedTouchTypes:&unk_1F1184CB0];
    [(WKMouseTouchGestureRecognizer *)v4->_mouseTouchGestureRecognizer.m_ptr setAllowedTouchTypes:&unk_1F1184CC8];
    [(UIHoverGestureRecognizer *)v4->_mouseHoverGestureRecognizer.m_ptr setAllowedTouchTypes:&unk_1F1184CE0];
    objc_storeWeak(&v4->_delegate, a3);
    v4->_enabled = 1;
    v4->_cancelledOrExited = 1;
  }

  return v4;
}

- (void)_forEachGesture:(id)a3
{
  v7 = (a3 + 16);
  (*(a3 + 2))(a3, self->_mouseTouchGestureRecognizer.m_ptr);
  (*v7)(a3, self->_mouseHoverGestureRecognizer.m_ptr);
  m_ptr = self->_pencilHoverGestureRecognizer.m_ptr;
  v6 = *v7;

  v6(a3, m_ptr);
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_enabled = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__WKMouseInteraction_setEnabled___block_invoke;
    v7[3] = &__block_descriptor_33_e29_v16__0__UIGestureRecognizer_8l;
    v8 = a3;
    [(WKMouseInteraction *)self _forEachGesture:v7];
    if (!a3)
    {
      [(WKMouseInteraction *)self _resetCachedState];
    }
  }
}

- (UITouch)mouseTouch
{
  v2 = 32;
  if (self->_touching)
  {
    v2 = 40;
  }

  return *(&self->super.isa + v2);
}

- (id)_activeGesture
{
  if (self->_touching)
  {
    v3 = 8;
  }

  else
  {
    v4 = [(UITouch *)self->_currentHoverTouch.m_ptr type];
    v3 = 16;
    if (v4 == UITouchTypePencil)
    {
      v3 = 24;
    }
  }

  return *(&self->super.isa + v3);
}

- (optional<WebKit::NativeWebMouseEvent>)createMouseEventWithType:(optional<WebKit:(optional<WebKit::NativeWebMouseEvent> *)self :NativeWebMouseEvent> *__return_ptr)retstr wasCancelled:
{
  v4 = v2;
  v45 = *MEMORY[0x1E69E9840];
  if ((v2 & 0x100) == 0)
  {
    retstr->var0.var0 = 0;
    *(&retstr[4].var0.var15 + 16) = 0;
    return self;
  }

  v6 = self;
  v36 = v3;
  v35 = [unk_1F1222E08(self "_activeGesture")];
  if ((v35 & 0x40000) != 0)
  {
    v8 = *(&v6[2].var0.var16 + 17);
    v9 = v4 == 1;
    v10 = 2;
  }

  else
  {
    if ((*(&v6[2].var0.var7 + 2) & 1) == 0)
    {
      v10 = 0;
      v8 = *(&v6[2].var0.var16 + 17);
      v9 = v4 == 1;
      goto LABEL_10;
    }

    var0 = v6[2].var0.var1.var0;
    v8 = *(&v6[2].var0.var16 + 17);
    v9 = v4 == 1;
    if ((var0 & 2) == 0)
    {
      v10 = 0;
LABEL_10:
      v11 = 1;
      goto LABEL_11;
    }

    v10 = var0 & 2;
  }

  v11 = 2;
LABEL_11:
  if ((v8 & 1) == 0)
  {
    v10 = -2;
  }

  v34 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = unk_1F1222E10(v6, "mouseTouch");
  unk_1F1222E18(v6, "locationInView:", unk_1F1222E20(v6, "view"));
  v40.x = v14;
  v40.y = v15;
  WebCore::IntPoint::IntPoint(&v39, &v40);
  [v13 previousLocationInView:{unk_1F1222E28(v6, "view")}];
  v40.x = v16;
  v40.y = v17;
  WebCore::IntPoint::IntPoint(&v38, &v40);
  v18 = v39;
  v19 = HIDWORD(v39);
  v21 = v38;
  v20 = HIDWORD(v38);
  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v13 tapCount];
  [v13 timestamp];
  v38 = v24;
  WTF::MonotonicTime::approximateWallTime(&v38);
  v26 = v25;
  v27 = [v13 type];
  if (v27 == 2)
  {
    v28 = WebCore::penPointerEventType(2);
  }

  else
  {
    v28 = WebCore::mousePointerEventType(v27);
  }

  v29 = *v28;
  if (*v28)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  v37 = v29;
  WebKit::NativeWebMouseEvent::NativeWebMouseEvent(&v40, v4, v34, v22, &v39, &v39, v23, (v35 >> 12) & 0x10 | (v35 >> 17) & 0xF, (v18 - v21), (v19 - v20), 0.0, v26, 0.0, v36, &v37);
  WebKit::WebMouseEvent::WebMouseEvent(retstr, &v40);
  retstr->var0.var1.var0 = &unk_1F10F2AC0;
  retstr[4].var0.var1.var0 = v44;
  *(&retstr[4].var0.var15 + 16) = 1;
  v44 = 0;
  *&v40.x = &unk_1F10E8378;
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v30);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v31);
  v33 = v41;
  v41 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

  self = v37;
  v37 = 0;
  if (self)
  {
    if (atomic_fetch_add_explicit(&self->var0.var4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(self, v32);
    }
  }

  return self;
}

- (void)willMoveToView:(id)a3
{
  if (objc_loadWeak(&self->_view) != a3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__WKMouseInteraction_willMoveToView___block_invoke;
    v4[3] = &unk_1E76338D0;
    v4[4] = self;
    [(WKMouseInteraction *)self _forEachGesture:v4];
    [(WKMouseInteraction *)self _resetCachedState];
  }
}

uint64_t __37__WKMouseInteraction_willMoveToView___block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((*(a1 + 32) + 48));

  return [Weak removeGestureRecognizer:a2];
}

- (void)didMoveToView:(id)a3
{
  if (objc_loadWeak(&self->_view) != a3)
  {
    objc_storeWeak(&self->_view, a3);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__WKMouseInteraction_didMoveToView___block_invoke;
    v5[3] = &unk_1E76338D0;
    v5[4] = a3;
    [(WKMouseInteraction *)self _forEachGesture:v5];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_pencilHoverGestureRecognizer.m_ptr == a3 || (v7 = [a4 _isPointerTouch]) != 0)
  {
    if (self->_mouseHoverGestureRecognizer.m_ptr == a3 || self->_pencilHoverGestureRecognizer.m_ptr == a3)
    {
      if (a4)
      {
        v8 = a4;
      }

      m_ptr = self->_currentHoverTouch.m_ptr;
      self->_currentHoverTouch.m_ptr = a4;
      if (m_ptr)
      {
      }
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_hoverGestureRecognized:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_currentHoverTouch.m_ptr)
  {
    v5 = [a3 state];
    if ((v5 - 1) <= 4)
    {
      self->_cancelledOrExited = 0x101010000uLL >> (8 * (v5 - 1));
    }

    if (![a3 buttonMask])
    {
      [a3 locationInView:{-[WKMouseInteraction view](self, "view")}];
      engaged = self->_lastLocation.__engaged_;
      if (v5 == 4)
      {
        self->_lastLocation.var0.__val_.x = v6;
        self->_lastLocation.var0.__val_.y = v7;
        if (engaged)
        {
LABEL_14:
          [(WKMouseInteraction *)self createMouseEventWithType:258 wasCancelled:v5 == 4];
          if (v20 == 1)
          {
            Weak = objc_loadWeak(&self->_delegate);
            if ((v20 & 1) == 0)
            {
              __break(1u);
            }

            [Weak mouseInteraction:self changedWithEvent:&v15];
            if (v20)
            {
              v11 = v19;
              v15 = &unk_1F10F2AC0;
              v19 = 0;
              if (v11)
              {
              }

              v15 = &unk_1F10E8378;
              WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
              WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v12);
              v14 = v16;
              v16 = 0;
              if (v14)
              {
                if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v14, v13);
                }
              }
            }
          }

          return;
        }
      }

      else
      {
        if (self->_lastLocation.__engaged_)
        {
          if (self->_lastLocation.var0.__val_.x == v6 && self->_lastLocation.var0.__val_.y == v7)
          {
            return;
          }

          self->_lastLocation.var0.__val_.x = v6;
          self->_lastLocation.var0.__val_.y = v7;
          goto LABEL_14;
        }

        self->_lastLocation.var0.__val_.x = v6;
        self->_lastLocation.var0.__val_.y = v7;
      }

      self->_lastLocation.__engaged_ = 1;
      goto LABEL_14;
    }
  }
}

- (void)_updateMouseTouches:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [a3 anyObject];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  m_ptr = self->_currentMouseTouch.m_ptr;
  self->_currentMouseTouch.m_ptr = v5;
  if (m_ptr)
  {
  }

  [(WKMouseTouchGestureRecognizer *)self->_mouseTouchGestureRecognizer.m_ptr locationInView:objc_loadWeak(&self->_view)];
  engaged = self->_lastLocation.__engaged_;
  self->_lastLocation.var0.__val_.x = v9;
  self->_lastLocation.var0.__val_.y = v10;
  if (!engaged)
  {
    self->_lastLocation.__engaged_ = 1;
  }

  v11 = [(UITouch *)self->_currentMouseTouch.m_ptr phase];
  v12 = v11;
  if ((v11 - 3) < 2)
  {
    v15 = 1;
    v16 = 1;
    v13 = 1;
  }

  else if (v11 == UITouchPhaseMoved)
  {
    v13 = 1;
    self->_touching = 1;
    v15 = 0;
    self->_pressedButtonMask.var0.__val_ = [(WKMouseTouchGestureRecognizer *)self->_mouseTouchGestureRecognizer.m_ptr buttonMask];
    self->_pressedButtonMask.__engaged_ = 1;
    v16 = 2;
  }

  else if (v11)
  {
    v15 = 0;
    v16 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 1;
    self->_touching = 1;
    v14 = [(WKMouseTouchGestureRecognizer *)self->_mouseTouchGestureRecognizer.m_ptr buttonMask];
    v15 = 0;
    v16 = 0;
    self->_pressedButtonMask.var0.__val_ = v14;
    self->_pressedButtonMask.__engaged_ = 1;
  }

  [(WKMouseInteraction *)self createMouseEventWithType:v16 | (v13 << 8) wasCancelled:v12 == UITouchPhaseCancelled];
  if (v28 == 1 && v13)
  {
    Weak = objc_loadWeak(&self->_delegate);
    if ((v28 & 1) == 0)
    {
      __break(1u);
    }

    [Weak mouseInteraction:self changedWithEvent:&v23];
    if (v15)
    {
      self->_touching = 0;
      if (self->_pressedButtonMask.__engaged_)
      {
        self->_pressedButtonMask.__engaged_ = 0;
      }
    }
  }

  if (v28 == 1)
  {
    v19 = v27;
    v23 = &unk_1F10F2AC0;
    v27 = 0;
    if (v19)
    {
    }

    v23 = &unk_1F10E8378;
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v17);
    WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v20);
    v22 = v24;
    v24 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }
  }
}

- (CGPoint)locationInView:(id)a3
{
  v5 = [(WKMouseInteraction *)self mouseTouch];
  if (v5 && !self->_cancelledOrExited)
  {

    [(UITouch *)v5 locationInView:a3];
  }

  else
  {
    v6 = -1.0;
    v7 = -1.0;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

@end