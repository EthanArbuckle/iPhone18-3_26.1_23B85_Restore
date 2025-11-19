@interface WKTouchActionGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (WKTouchActionGestureRecognizer)initWithTouchActionDelegate:(id)a3;
- (void)clearTouchActionsForTouchIdentifier:(unsigned int)a3;
- (void)setTouchActions:(OptionSet<WebCore:(unsigned int)a4 :TouchAction>)a3 forTouchIdentifier:;
@end

@implementation WKTouchActionGestureRecognizer

- (WKTouchActionGestureRecognizer)initWithTouchActionDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = WKTouchActionGestureRecognizer;
  result = [(WKTouchActionGestureRecognizer *)&v5 init];
  if (result)
  {
    result->_touchActionDelegate = a3;
  }

  return result;
}

- (void)setTouchActions:(OptionSet<WebCore:(unsigned int)a4 :TouchAction>)a3 forTouchIdentifier:
{
  var0 = a3.var0;
  v5 = a4;
  WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::OptionSet<WebCore::TouchAction>&>(&self->_touchActionsByTouchIdentifier, &v5, &var0, &v4);
}

- (void)clearTouchActionsForTouchIdentifier:(unsigned int)a3
{
  v7 = a3;
  ShouldValidate = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(&self->_touchActionsByTouchIdentifier, &v7);
  m_table = self->_touchActionsByTouchIdentifier.m_impl.m_table;
  if (m_table)
  {
    v6 = &m_table[8 * *(m_table - 1)];
    if (v6 == ShouldValidate)
    {
      return;
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      return;
    }

    v6 = 0;
  }

  if (v6 != ShouldValidate)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::remove(&self->_touchActionsByTouchIdentifier, ShouldValidate);
  }
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  m_table = self->_touchActionsByTouchIdentifier.m_impl.m_table;
  if (m_table && *(m_table - 3) && ((v6 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate gestureRecognizerMayPanWebView:?], v20 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate gestureRecognizerMayPinchToZoomWebView:a3], v7 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate gestureRecognizerMayDoubleTapToZoomWebView:a3], v8 = v7, v19 = v6, (v6 & 1) != 0) || (v20 & 1) != 0 || v7))
  {
    v10 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate touchActionActiveTouches];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v21 = [v14 unsignedIntegerValue];
          ShouldValidate = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(&self->_touchActionsByTouchIdentifier, &v21);
          v16 = ShouldValidate;
          v17 = self->_touchActionsByTouchIdentifier.m_impl.m_table;
          if (v17)
          {
            v17 += 8 * *(v17 - 1);
          }

          if (v17 != ShouldValidate && [objc_msgSend(objc_msgSend(v10 objectForKey:{v14), "gestureRecognizers"), "containsObject:", a3}] && (v19 && (*(v16 + 4) & 0x1C) == 0 || v20 && (*(v16 + 4) & 0x24) == 0 || v8 && (*(v16 + 4) & 2) != 0))
          {
            LOBYTE(v9) = 1;
            return v9;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        LOBYTE(v9) = 0;
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end