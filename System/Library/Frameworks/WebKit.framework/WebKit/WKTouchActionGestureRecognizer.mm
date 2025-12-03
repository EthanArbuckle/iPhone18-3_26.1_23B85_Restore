@interface WKTouchActionGestureRecognizer
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (WKTouchActionGestureRecognizer)initWithTouchActionDelegate:(id)delegate;
- (void)clearTouchActionsForTouchIdentifier:(unsigned int)identifier;
- (void)setTouchActions:(OptionSet<WebCore:(unsigned int)actions :TouchAction>)a3 forTouchIdentifier:;
@end

@implementation WKTouchActionGestureRecognizer

- (WKTouchActionGestureRecognizer)initWithTouchActionDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = WKTouchActionGestureRecognizer;
  result = [(WKTouchActionGestureRecognizer *)&v5 init];
  if (result)
  {
    result->_touchActionDelegate = delegate;
  }

  return result;
}

- (void)setTouchActions:(OptionSet<WebCore:(unsigned int)actions :TouchAction>)a3 forTouchIdentifier:
{
  var0 = a3.var0;
  actionsCopy = actions;
  WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::OptionSet<WebCore::TouchAction>&>(&self->_touchActionsByTouchIdentifier, &actionsCopy, &var0, &v4);
}

- (void)clearTouchActionsForTouchIdentifier:(unsigned int)identifier
{
  identifierCopy = identifier;
  ShouldValidate = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(&self->_touchActionsByTouchIdentifier, &identifierCopy);
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

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  v27 = *MEMORY[0x1E69E9840];
  m_table = self->_touchActionsByTouchIdentifier.m_impl.m_table;
  if (m_table && *(m_table - 3) && ((v6 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate gestureRecognizerMayPanWebView:?], v20 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate gestureRecognizerMayPinchToZoomWebView:recognizer], v7 = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate gestureRecognizerMayDoubleTapToZoomWebView:recognizer], v8 = v7, v19 = v6, (v6 & 1) != 0) || (v20 & 1) != 0 || v7))
  {
    touchActionActiveTouches = [(WKTouchActionGestureRecognizerDelegate *)self->_touchActionDelegate touchActionActiveTouches];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [touchActionActiveTouches countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(touchActionActiveTouches);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          unsignedIntegerValue = [v14 unsignedIntegerValue];
          ShouldValidate = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(&self->_touchActionsByTouchIdentifier, &unsignedIntegerValue);
          v16 = ShouldValidate;
          v17 = self->_touchActionsByTouchIdentifier.m_impl.m_table;
          if (v17)
          {
            v17 += 8 * *(v17 - 1);
          }

          if (v17 != ShouldValidate && [objc_msgSend(objc_msgSend(touchActionActiveTouches objectForKey:{v14), "gestureRecognizers"), "containsObject:", recognizer}] && (v19 && (*(v16 + 4) & 0x1C) == 0 || v20 && (*(v16 + 4) & 0x24) == 0 || v8 && (*(v16 + 4) & 2) != 0))
          {
            LOBYTE(v9) = 1;
            return v9;
          }
        }

        v11 = [touchActionActiveTouches countByEnumeratingWithState:&v22 objects:v26 count:16];
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