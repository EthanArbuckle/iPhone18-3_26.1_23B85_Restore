@interface LPCSSResolver
- (LPCSSResolver)initWithTheme:(id)a3;
- (id)resolveCSSValue:(id)a3;
- (id)ruleDictionaryForStyle:(id)a3 forComponentClass:(Class)a4;
- (void)addStyle:(id)a3 toElement:(id)a4 inComponent:(id)a5;
- (void)enumerateResolvedRulesFromRuleDictionary:(id)a3 withBlock:(id)a4;
@end

@implementation LPCSSResolver

- (LPCSSResolver)initWithTheme:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = LPCSSResolver;
  v6 = [(LPCSSResolver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_theme, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    localVariables = v7->_localVariables;
    v7->_localVariables = v8;

    v10 = v7;
  }

  return v7;
}

- (id)resolveCSSValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
    v6 = [(LPTheme *)self->_theme CSSTextForThemeProperty:v5];
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_localVariables objectForKeyedSubscript:v5];
      if (v11)
      {
        v9 = [(LPCSSResolver *)self resolveCSSValue:v11];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
    }

    else
    {
      v10 = [v4 _lp_CSSText];
    }

    v9 = v10;
  }

  return v9;
}

- (void)enumerateResolvedRulesFromRuleDictionary:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__LPCSSResolver_enumerateResolvedRulesFromRuleDictionary_withBlock___block_invoke;
  v8[3] = &unk_1E7A353B0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __68__LPCSSResolver_enumerateResolvedRulesFromRuleDictionary_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) resolveCSSValue:a3];
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)ruleDictionaryForStyle:(id)a3 forComponentClass:(Class)a4
{
  v5 = a3;
  v6 = [(objc_class *)a4 ruleDictionaryForStyle:v5];
  if (v6)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@"lp-rich-link-" withString:&stru_1F2447CF0];
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__LPCSSResolver_ruleDictionaryForStyle_forComponentClass___block_invoke;
    v14[3] = &unk_1E7A353D8;
    v9 = v8;
    v15 = v9;
    v10 = v7;
    v16 = v10;
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
    v11 = v16;
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __58__LPCSSResolver_ruleDictionaryForStyle_forComponentClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    v8 = [v5 variableByResolvingWithThemePath:*(a1 + 40)];
    [v7 setObject:v8 forKey:v9];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKey:v9];
  }
}

- (void)addStyle:(id)a3 toElement:(id)a4 inComponent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  LPWebLock();
  v11 = [(LPCSSResolver *)self ruleDictionaryForStyle:v8 forComponentClass:objc_opt_class()];
  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__LPCSSResolver_addStyle_toElement_inComponent___block_invoke;
  v14[3] = &unk_1E7A35400;
  v13 = v12;
  v15 = v13;
  [(LPCSSResolver *)self enumerateResolvedRulesFromRuleDictionary:v11 withBlock:v14];
  if ([v13 length])
  {
    [v9 setAttribute:@"style" value:v13];
  }

  else
  {
    [v9 removeAttribute:@"style"];
  }

  [v9 setClassName:v8];
}

void __48__LPCSSResolver_addStyle_toElement_inComponent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@":"];
  [*(a1 + 32) appendString:v5];
  [*(a1 + 32) appendString:@";"];
}

@end