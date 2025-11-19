@interface UIView(NUIPrivate)
- (double)calculateLayoutSizeFittingSize:()NUIPrivate;
- (id)debugSizeCacheDict;
- (uint64_t)debugSizeCache;
@end

@implementation UIView(NUIPrivate)

- (id)debugSizeCacheDict
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  begin = IfNeeded->_sizeCache.__begin_;
  for (i = IfNeeded->_sizeCache.__end_; begin != i; begin += 4)
  {
    v6 = *begin;
    v7 = begin[1];
    v8 = [MEMORY[0x277CCAE60] valueWithCGSize:{begin[2], begin[3]}];
    [v2 setObject:v8 forKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGSize:", v6, v7)}];
  }

  v9 = [v2 copy];

  return v9;
}

- (uint64_t)debugSizeCache
{
  v2 = MEMORY[0x277CCAB68];
  v3 = objc_opt_class();
  v4 = [v2 stringWithFormat:@"<%@ %p size cache:\n", NSStringFromClass(v3), a1];
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  begin = IfNeeded->_sizeCache.__begin_;
  for (i = IfNeeded->_sizeCache.__end_; begin != i; begin += 2)
  {
    width = begin[1].width;
    height = begin[1].height;
    v10 = NSStringFromCGSize(*begin);
    v13.width = width;
    v13.height = height;
    [v4 appendFormat:@"\t%@ : %@\n", v10, NSStringFromCGSize(v13)];
  }

  return [v4 stringByAppendingString:@">"];
}

- (double)calculateLayoutSizeFittingSize:()NUIPrivate
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 0);
  if (IfNeeded->_minSize.width == IfNeeded->_maxSize.width && (v7 = IfNeeded, [(objc_object *)a1 canUseFastLayoutSizeCalulation]))
  {
    width = v7->_minSize.width;
    [-[objc_object _fontInfoForBaselineSpacing](a1 "_fontInfoForBaselineSpacing")];
    [(objc_object *)a1 _currentScreenScale];
  }

  else
  {
    if (![(objc_object *)a1 _wantsAutolayout])
    {
      goto LABEL_8;
    }

    if (_NUIViewIsSwiftUISPICompatible(UIView *)::onceToken != -1)
    {
      [UIView(NUIPrivate) calculateLayoutSizeFittingSize:];
    }

    v9 = [(objc_object *)a1 methodForSelector:sel__layoutSizeThatFits_fixedAxes_];
    if (v9 == _NUIViewIsSwiftUISPICompatible(UIView *)::baseLayoutSizeImp)
    {
      if (([_NUIViewIsSwiftUISPICompatible(UIView *)::checkedSet containsObject:a1] & 1) == 0)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Arranged subview %@ wants autolayout. It must be wrapped in a _UIConstraintBasedLayoutHostingView or override _layoutSizeThatFits:fixedAxes:.", a1];
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v23 = _NUILog();
        v24 = v23;
        if (has_internal_diagnostics)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(UIView(NUIPrivate) *)v21 calculateLayoutSizeFittingSize:v24];
          }
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(UIView(NUIPrivate) *)v21 calculateLayoutSizeFittingSize:v24];
        }

        [_NUIViewIsSwiftUISPICompatible(UIView *)::checkedSet addObject:a1];
      }

      [(objc_object *)a1 systemLayoutSizeFittingSize:a2, a3];
      return v25;
    }

    else
    {
LABEL_8:
      [(objc_object *)a1 alignmentRectInsets];
      v14 = v12 + v13;
      v15 = a2 - (v12 + v13);
      if (v15 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = a3 - (v10 + v11);
      if (v17 >= 0.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      [(objc_object *)a1 _layoutSizeThatFits:0 fixedAxes:v16, v18];
      return v19 + v14;
    }
  }

  return width;
}

- (void)calculateLayoutSizeFittingSize:()NUIPrivate .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21D09E000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

- (void)calculateLayoutSizeFittingSize:()NUIPrivate .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21D09E000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

@end