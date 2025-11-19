@interface TUIInstantiateContext
- ($0220C184157FC9E8AD112820945A9326)animationDefinitonWithNode:(id)a3 nameAttribute:(unsigned __int16)a4;
- ($0220C184157FC9E8AD112820945A9326)elementDefinitionWithNameAttribute:(unsigned __int16)a3 node:(id)a4;
- ($0220C184157FC9E8AD112820945A9326)letDefinitionWithNameAttribute:(unsigned __int16)a3 valueAttribute:(unsigned __int16)a4 node:(id)a5;
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)bindingNameForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)constantNameForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)globalsNameForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($2940F3BBF0C500EC413214967FDB6F62)springTimingParametersForAttribute:(SEL)a3 node:(unsigned __int16)a4;
- ($2940F3BBF0C500EC413214967FDB6F62)springTimingParametersFromValue:(SEL)a3;
- ($738B17BD11CC339B30296C0EA03CEC2B)closureForNode:(id)a3;
- ($738B17BD11CC339B30296C0EA03CEC2B)elementReferenceForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($738B17BD11CC339B30296C0EA03CEC2B)enumeratorWithAttribute:(unsigned __int16)a3 node:(id)a4;
- ($738B17BD11CC339B30296C0EA03CEC2B)lookupUnconditionalAttribute:(unsigned __int16)a3 attributes:(id)a4;
- ($738B17BD11CC339B30296C0EA03CEC2B)nameReferenceForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($738B17BD11CC339B30296C0EA03CEC2B)unresolvedValueForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($7E080378D8F67055EE0984892F39872B)propertyNameForAttribute:(unsigned __int16)a3 node:(id)a4;
- ($BCFAEF449BEAD7B465B9C350BA76DD22)styleDefinitionWithNode:(SEL)a3 nameAttribute:(id)a4 inheritAttribute:(unsigned __int16)a5;
- ($E297CC25127479E857BE23A4F8632EA4)lengthForAttribute:(SEL)a3 node:(unsigned __int16)a4;
- ($E297CC25127479E857BE23A4F8632EA4)lengthFromValue:(SEL)a3;
- ($E756168898AF8F0D74815393AFAB5A0B)animationReferenceForAttribute:(unsigned __int16)a3 node:(id)a4;
- (BOOL)BOOLForAttribute:(unsigned __int16)a3 node:(id)a4;
- (BOOL)BOOLForAttribute:(unsigned __int16)a3 withDefault:(BOOL)a4 node:(id)a5;
- (BOOL)BOOLForCondition:(id)a3;
- (BOOL)BOOLFromValue:(id)a3;
- (CGAffineTransform)transformForAttribute:(SEL)a3 node:(unsigned __int16)a4;
- (CGAffineTransform)transformFromValue:(SEL)a3;
- (CGSize)sizeForAttribute:(unsigned __int16)a3 node:(id)a4;
- (CGSize)sizeFromValue:(id)a3;
- (TUIActionHandlerDelegate)actionDelegate;
- (TUIDynamicControlling)dynamicController;
- (TUIInstantiateContext)initWithDelegate:(id)a3 package:(id)a4 manager:(id)a5 identifierMap:(id)a6 environment:(id)a7 state:(id)a8 feedId:(id)a9;
- (TUIInstantiateContextDelegate)delegate;
- (TUITransactionCoordinating)transactionCoordinator;
- (UIEdgeInsets)insetsForAttribute:(unsigned __int16)a3 node:(id)a4;
- (UIEdgeInsets)insetsForAttribute:(unsigned __int16)a3 withDefault:(UIEdgeInsets)a4 node:(id)a5;
- (const)_resolvedValueForAttribute:(unsigned __int16)a3 node:(id)a4;
- (double)floatForAttribute:(unsigned __int16)a3 node:(id)a4;
- (double)floatForAttribute:(unsigned __int16)a3 withDefault:(double)a4 node:(id)a5;
- (double)floatFromValue:(id)a3 default:(double)a4;
- (id)_xpathForLocation:(id)a3;
- (id)baseURLForNode:(id)a3;
- (id)colorArrayForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)colorForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)colorFromValue:(id)a3;
- (id)debugDumpEnvironmentContainerStructure:(id)a3;
- (id)dynamicStateForKind:(id)a3 instance:(id)a4 parameters:(id)a5;
- (id)environmentChildContainersForContainer:(id)a3;
- (id)evaluateStringForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)focusStyleForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)guideSpecFromValue:(id)a3;
- (id)guidesForNode:(id)a3;
- (id)instantiateBinding:(id)a3 withDynamicProvider:(id)a4 childrenOfNode:(id)a5;
- (id)instantiateEnumerator:(id)a3 withChildrenOfNode:(id)a4 options:(id)a5;
- (id)instantiateTemplate:(id)a3 bindings:(id)a4 actionObject:(id)a5;
- (id)modelIdentifierByAppendingString:(id)a3 node:(id)a4;
- (id)modelIdentifierWithNode:(id)a3;
- (id)objectForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)objectFromValue:(id)a3;
- (id)pointerStyleForNode:(id)a3;
- (id)saveState;
- (id)serviceConformingToProtocol:(id)a3;
- (id)stringArrayForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)stringForAttribute:(unsigned __int16)a3 node:(id)a4;
- (id)stringFromName:(id)a3;
- (id)stringFromValue:(id)a3;
- (id)structForAttribute:(unsigned __int16)a3 node:(id)a4;
- (int64_t)integerForAttribute:(unsigned __int16)a3 withDefault:(int64_t)a4 node:(id)a5;
- (int64_t)integerFromValue:(id)a3 default:(int64_t)a4;
- (unint64_t)animationCalculationModeAndCurveForNode:(id)a3;
- (unint64_t)childCountForNode:(id)a3;
- (unint64_t)evaluateBinding:(id)a3 withObject:(id)a4 atIndex:(unint64_t)a5 count:(unint64_t)a6 uniqueID:(id)a7 block:(id)a8;
- (unint64_t)evaluateEnumerator:(id)a3 withObject:(id)a4 atIndex:(unint64_t)a5 count:(unint64_t)a6 uniqueID:(id)a7 block:(id)a8;
- (unint64_t)unsignedIntegerForAttribute:(unsigned __int16)a3 withDefault:(unint64_t)a4 node:(id)a5;
- (unint64_t)unsignedIntegerFromValue:(id)a3 default:(unint64_t)a4;
- (void)dealloc;
- (void)defineBindingWithName:(id)a3 value:(id)a4;
- (void)defineBool:(BOOL)a3 withName:(id)a4;
- (void)defineComponentBindingWithName:(id)a3 value:(id)a4;
- (void)defineConstantWithName:(id)a3 value:(id)a4;
- (void)defineElement:(id)a3 closure:(id)a4;
- (void)defineLet:(id)a3 closure:(id)a4;
- (void)defineStyle:(id *)a3 closure:(id)a4;
- (void)enumerateChildrenOfNode:(id)a3 block:(id)a4;
- (void)evaluateWithSnapshot:(id)a3 block:(id)a4;
- (void)includeTemplateWithURL:(id)a3;
- (void)setEnvironment:(id)a3;
- (void)setStatsCollector:(id)a3;
@end

@implementation TUIInstantiateContext

- (TUIInstantiateContext)initWithDelegate:(id)a3 package:(id)a4 manager:(id)a5 identifierMap:(id)a6 environment:(id)a7 state:(id)a8 feedId:(id)a9
{
  obj = a3;
  v15 = a4;
  v22 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = TUIInstantiateContext;
  v19 = [(TUIInstantiateContext *)&v24 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    v19->_feedId.uniqueIdentifier = a9.var0;
    objc_storeWeak(&v19->_delegate, obj);
    objc_storeStrong(p_isa + 6, a6);
    objc_storeStrong(p_isa + 7, a7);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 4, a5);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    TUI::Evaluation::Context::~Context(context);
    operator delete();
  }

  conformanceCache = self->_conformanceCache;
  if (conformanceCache)
  {
    v5 = conformanceCache[9];
    if (v5)
    {
      conformanceCache[10] = v5;
      operator delete(v5);
    }

    operator delete();
  }

  v6.receiver = self;
  v6.super_class = TUIInstantiateContext;
  [(TUIInstantiateContext *)&v6 dealloc];
}

- (id)serviceConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(TUIInstantiateContext *)self delegate];
  v6 = [v5 instantiateContext:self serviceConformingToProtocol:v4];

  return v6;
}

- (id)instantiateTemplate:(id)a3 bindings:(id)a4 actionObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(self->_context + 96);
  if (v11)
  {
    *(v11 + 27848) = mach_absolute_time();
  }

  if (v8)
  {
    v12 = [v8 package];
    v13 = v12;
    if (v12 != self->_package)
    {
      v14 = 0;
LABEL_12:

      goto LABEL_14;
    }

    if (v13)
    {
      kdebug_trace();
      [(TUIInstantiateContext *)self clearErrors];
      v15 = [[_TUIInstantiateEntry alloc] initWithTemplate:v8 bindings:v9 actionObject:v10];
      v16 = objc_autoreleasePoolPush();
      TUI::Evaluation::Context::reset(self->_context);
      v17 = TUI::Evaluation::Context::instantiateEntry(self->_context, v15);
      objc_autoreleasePoolPop(v16);
      kdebug_trace();
      if (v11)
      {
        v18 = *(v11 + 27848);
        v19 = mach_absolute_time();
        v20 = v19 - v18;
        if (v18 >= v19)
        {
          v20 = v18 - v19;
        }

        *(v11 + 27816) += v20;
      }

      v13 = v17;

      v14 = v13;
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)saveState
{
  v3 = [TUIInstantiateContextState alloc];
  v4 = [*(self->_context + 20) copy];
  v5 = [(TUIInstantiateContextState *)v3 initWithViewStateMapping:v4];

  return v5;
}

- (void)setEnvironment:(id)a3
{
  v5 = a3;
  environment = self->_environment;
  v7 = v5;
  if (environment != v5 && ![(TUIEnvironment *)environment isEqualToEnvironment:v5])
  {
    objc_storeStrong(&self->_environment, a3);
    TUI::Evaluation::Context::setEnvironment(self->_context, v7);
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)lengthFromValue:(SEL)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:5];
  if (!TUIValueNotNil(a4.var0))
  {
    return 0x7FC000007FC00000;
  }

  TUI::Evaluation::Context::resolve(self->_context, a4.var0, v8);
  v6 = TUI::Evaluation::ResolvedValue::lengthValue(v8, self->_context);

  return v6;
}

- (double)floatFromValue:(id)a3 default:(double)a4
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:1];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v8);
    a4 = TUI::Evaluation::ResolvedValue::floatValue(v8, self->_context);
  }

  return a4;
}

- (unint64_t)unsignedIntegerFromValue:(id)a3 default:(unint64_t)a4
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:2];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v8);
    a4 = TUI::Evaluation::ResolvedValue::integerValue(v8, self->_context);
  }

  return a4;
}

- (int64_t)integerFromValue:(id)a3 default:(int64_t)a4
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:2];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v8);
    a4 = TUI::Evaluation::ResolvedValue::integerValue(v8, self->_context);
  }

  return a4;
}

- (CGSize)sizeFromValue:(id)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:8];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v10);
    width = TUI::Evaluation::ResolvedValue::sizeValue(v10, self->_context);
    height = v6;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)colorFromValue:(id)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:10];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v7);
    v5 = TUI::Evaluation::ResolvedValue::colorValue(v7, self->_context);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)BOOLFromValue:(id)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:3];
  if (!TUIValueNotNil(a3.var0))
  {
    return 0;
  }

  TUI::Evaluation::Context::resolve(self->_context, a3.var0, v7);
  v5 = TUI::Evaluation::ResolvedValue::BOOLValue(v7, self->_context);

  return v5;
}

- (BOOL)BOOLForCondition:(id)a3
{
  var0 = a3.var0;
  if (!TUIConditionNotNil(a3.var0))
  {
    return 1;
  }

  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:0];
  TUI::Evaluation::Context::resolve(self->_context, var0, v7);
  v5 = TUI::Evaluation::ResolvedValue::BOOLValue(v7, self->_context);

  return v5;
}

- (id)stringFromValue:(id)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:6];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v7);
    v5 = TUI::Evaluation::ResolvedValue::stringValue(v7, self->_context);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)objectFromValue:(id)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:7];
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, a3.var0, v7);
    v5 = TUI::Evaluation::ResolvedValue::objectValue(v7, self->_context);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGAffineTransform)transformFromValue:(SEL)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:4];
  result = TUIValueNotNil(a4.var0);
  if (result)
  {
    TUI::Evaluation::Context::resolve(self->_context, a4.var0, v9);
    TUI::Evaluation::ResolvedValue::transformValue(v9, self->_context, retstr);
  }

  else
  {
    v8 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v8;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  return result;
}

- ($2940F3BBF0C500EC413214967FDB6F62)springTimingParametersFromValue:(SEL)a3
{
  [(TUIStatsEventCollector *)self->_statsCollector recordEvent:28];
  result = TUIValueNotNil(a4.var0);
  if (result)
  {
    TUI::Evaluation::Context::resolve(self->_context, a4.var0, v8);
    TUI::Evaluation::ResolvedValue::springTimingParameters(v8, self->_context, retstr);
  }

  else
  {
    *&retstr->var0 = TUISpringTimingParametersZero;
    *&retstr->var2 = unk_24CEC0;
    retstr->var3.dy = 0.0;
  }

  return result;
}

- (id)stringFromName:(id)a3
{
  v4 = a3;
  if (TUINameIsValid(*&a3))
  {
    v5 = TUI::Symbol::Tab::string(*(self->_context + 70), v4);
  }

  else
  {
    v5 = &stru_264550;
  }

  return v5;
}

- (id)guideSpecFromValue:(id)a3
{
  var0 = a3.var0;
  if (TUIValueNotNil(a3.var0))
  {
    TUI::Evaluation::Context::resolve(self->_context, var0, v7);
    v5 = TUI::Evaluation::ResolvedValue::guideValue(v7, self->_context);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)instantiateBinding:(id)a3 withDynamicProvider:(id)a4 childrenOfNode:(id)a5
{
  v8 = a4;
  var0 = a5.var0;
  v10 = TUI::Evaluation::Context::childrenOfNode(self->_context, a5.var0);
  v11 = TUI::Evaluation::Context::closureForNode(self->_context, var0);
  context = self->_context;
  if (*(context + 184))
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v14 = [*(context + 21) builderClassForDynamicInstantiation];
  }

  v15 = v14;
  v16 = [(TUIInstantiateContext *)self snapshotWithClosure:v11];
  v17 = [v8 instantiateAsBinding:*&a3 options:0 flags:v13 builderClass:v14 nodes:v10 snapshot:v16 context:self];

  return v17;
}

- (id)instantiateEnumerator:(id)a3 withChildrenOfNode:(id)a4 options:(id)a5
{
  v8 = a5;
  context = self->_context;
  if (context[184])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  var0 = a4.var0;
  v12 = TUI::Evaluation::Context::childrenOfNode(self->_context, a4.var0);
  v13 = TUI::Evaluation::Context::closureForNode(self->_context, var0);
  v14 = TUI::Evaluation::Context::instantiateEnumeratorWithNodes(context, a3.var0, v12, v13, v8, v10);

  return v14;
}

- (unint64_t)evaluateEnumerator:(id)a3 withObject:(id)a4 atIndex:(unint64_t)a5 count:(unint64_t)a6 uniqueID:(id)a7 block:(id)a8
{
  v14 = a4;
  v15 = a8;
  v16 = !TUIEnumeratorNotNil(a3.var0);
  if (!v15)
  {
    LOBYTE(v16) = 1;
  }

  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = *(self->_context + 72);
    if (*(v17 + 264) <= a3.var0)
    {
      v18 = 0;
    }

    else
    {
      v18 = (*(v17 + 256) + 16 * a3.var0);
    }

    sub_8BE78(&v22, v18);
    v20 = v23;
    v19 = TUI::Evaluation::Context::evaluateEnumeratorWithBlock(self->_context, v22, v20, v14, a5, a6, a7.var0, v15);
  }

  return v19;
}

- (unint64_t)evaluateBinding:(id)a3 withObject:(id)a4 atIndex:(unint64_t)a5 count:(unint64_t)a6 uniqueID:(id)a7 block:(id)a8
{
  v14 = a4;
  v15 = a8;
  v17 = !TUINameIsValid(*&a3);
  if (!v15)
  {
    LOBYTE(v17) = 1;
  }

  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v18 = TUI::Package::Enumerator::Entry::binding(*&a3, v16);
    v20 = v19;
    v21 = TUI::Evaluation::Context::evaluateEnumeratorWithBlock(self->_context, v18, v20, v14, a5, a6, a7.var0, v15);
  }

  return v21;
}

- (id)modelIdentifierWithNode:(id)a3
{
  v4 = TUI::Evaluation::Context::identifierWithNode(self->_context, a3.var0);
  v5 = [(TUIIdentifierMap *)self->_identifierMap UUID];
  v6 = [v4 tui_identifierByPrependingUUID:v5];

  return v6;
}

- (id)modelIdentifierByAppendingString:(id)a3 node:(id)a4
{
  v6 = a3;
  v7 = TUI::Evaluation::Context::identifierWithNode(self->_context, a4.var0);
  v8 = [v7 tui_identifierByAppendingString:v6];
  v9 = [(TUIIdentifierMap *)self->_identifierMap UUID];
  v10 = [v8 tui_identifierByPrependingUUID:v9];

  return v10;
}

- (void)evaluateWithSnapshot:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      context = self->_context;
      [v6 contextSnapshot];
      TUI::Evaluation::Context::evaluateWithSnapshot(context, &v10, v8);
      if (v11)
      {
        sub_11420(v11);
      }
    }
  }
}

- (void)setStatsCollector:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_statsCollector, a3);
  context = self->_context;
  v7 = context[67];
  context[67] = v5;
}

- (void)defineBindingWithName:(id)a3 value:(id)a4
{
  v7 = a4;
  if (TUINameIsValid(*&a3))
  {
    v6 = a3;
    TUI::Evaluation::Context::pushBinding(self->_context, v6, v7);
  }
}

- (void)defineComponentBindingWithName:(id)a3 value:(id)a4
{
  v7 = a4;
  if (TUINameIsValid(*&a3))
  {
    v6 = a3;
    TUI::Evaluation::Context::defineComponentBinding(self->_context, v6, v7);
  }
}

- (void)defineConstantWithName:(id)a3 value:(id)a4
{
  if (TUINameIsValid(*&a3) && TUIValueNotNil(a4.var0))
  {
    context = self->_context;

    TUI::Evaluation::Context::pushConstant(context, *&a3, a4.var0);
  }
}

- (void)defineBool:(BOOL)a3 withName:(id)a4
{
  if (TUINameIsValid(*&a4))
  {
    context = self->_context;
    v9._kind = 12;
    v9._object = 0;
    v9.var0._BOOL = a3;
    v8 = a4;
    TUI::Evaluation::Context::pushConstant(context, v8, &v9);
  }
}

- (void)defineLet:(id)a3 closure:(id)a4
{
  var0 = a3.var0.var0;
  if (TUIDefinitionNotNil(a3.var0.var0) && TUIValueNotNil(a3.var1.var0))
  {
    context = self->_context;
    v8 = context[72];
    if (*(v8 + 23) > var0)
    {
      v9 = (*(v8 + 22) + 12 * var0);
      if (v9)
      {
        v10 = v9[1];
        v11 = v9[2];
        if (v11 != 0xFFFF && v10 != 0xFFFF)
        {
          v13 = v10 | (v11 << 16);
          v14 = *v9;
          if (*v9)
          {
            if (v14 == 2)
            {
              if (*(v9 + 2) != -1)
              {

                TUI::Evaluation::Context::pushFunction(context, a3.var0.var0);
              }
            }

            else if (v14 == 1)
            {

              TUI::Evaluation::Context::pushNamedElement(context, v13, HIDWORD(*&a3));
            }
          }

          else
          {

            TUI::Evaluation::Context::pushConstant(context, v13, HIDWORD(*&a3));
          }
        }
      }
    }
  }
}

- (void)defineElement:(id)a3 closure:(id)a4
{
  if (TUIDefinitionNotNil(a3.var0.var0) && TUIElementNodeNotNil(a3.var1.var0))
  {
    context = self->_context;

    TUI::Evaluation::Context::pushDefinedElement(context, a3.var0.var0);
  }
}

- (void)defineStyle:(id *)a3 closure:(id)a4
{
  context = self->_context;
  v5 = *a3;
  TUI::Evaluation::Context::pushStyle(context, &v5);
}

- (id)dynamicStateForKind:(id)a3 instance:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUIManager *)self->_manager dynamicRegistry];
  v12 = [v11 stateProviderForKind:v8];

  v13 = [v12 dynamicStateForKind:v8 instance:v9 parameters:v10];
  if (v13)
  {
    capture = self->_capture;
    if (capture)
    {
      [(TUIInstantiateCapturing *)capture captureDynamicState:v13 forKind:v8 instance:v9 parameters:v10];
    }
  }

  return v13;
}

- (id)_xpathForLocation:(id)a3
{
  var0 = a3.var0;
  v5 = a3.var0;
  if (TUILocationNotNil(a3.var0))
  {
    v6 = *(self->_context + 72);
    if (*(v6 + 17) > v5 >> 12 && (v7 = (*(v6 + 16) + 8 * (v5 >> 12))) != 0)
    {
      v8 = *v7;
      v9 = *(v7 + 1) << 32;
      v10 = v8 << 16;
    }

    else
    {
      v9 = 0xFFFFFFFF00000000;
      v10 = 4294901760;
    }

    v13 = v9 | var0 & 0xFFF | v10;
    v11 = TUI::Package::Location::Entry::description(&v13, v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- ($738B17BD11CC339B30296C0EA03CEC2B)unresolvedValueForAttribute:(unsigned __int16)a3 node:(id)a4
{
  context = self->_context;
  v7 = a3;
  if (a3 == 0xFFFF)
  {
    goto LABEL_5;
  }

  if (a3 >= 0x100u)
  {
    sub_8BEBC("bitset test argument out of range");
  }

  if (((*(context + ((a3 >> 3) & 0x1FF8) + 248) >> a3) & 1) == 0)
  {
LABEL_5:
    v5 = &TUIValueNil;
  }

  else
  {
    v5 = sub_11F88(context + 39, &v7) + 5;
  }

  return v5->var0;
}

- ($7E080378D8F67055EE0984892F39872B)propertyNameForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::propertyName(v5, context, v6);
}

- (const)_resolvedValueForAttribute:(unsigned __int16)a3 node:(id)a4
{
  context = self->_context;
  v6 = a3;
  if (a3 == 0xFFFF)
  {
    return 0;
  }

  if (a3 >= 0x100u)
  {
    sub_8BEBC("bitset test argument out of range");
  }

  if (((*(context + ((a3 >> 3) & 0x1FF8) + 280) >> a3) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return (sub_11F88(context + 44, &v6) + 3);
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)lengthForAttribute:(SEL)a3 node:(unsigned __int16)a4
{
  v6 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a4 node:a5.var0];
  if (v6)
  {
    return TUI::Evaluation::ResolvedValue::lengthValue(v6, self->_context);
  }

  else
  {
    return 0x7FC000007FC00000;
  }
}

- (UIEdgeInsets)insetsForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    top = TUI::Evaluation::ResolvedValue::insetsValue(v5, self->_context);
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)insetsForAttribute:(unsigned __int16)a3 withDefault:(UIEdgeInsets)a4 node:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a5.var0];
  if (v10)
  {
    top = TUI::Evaluation::ResolvedValue::insetsValue(v10, self->_context);
    left = v11;
    bottom = v12;
    right = v13;
  }

  v14 = top;
  v15 = left;
  v16 = bottom;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (double)floatForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (!v5)
  {
    return 0.0;
  }

  context = self->_context;

  return TUI::Evaluation::ResolvedValue::floatValue(v5, context);
}

- (double)floatForAttribute:(unsigned __int16)a3 withDefault:(double)a4 node:(id)a5
{
  v7 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a5.var0];
  if (!v7)
  {
    return a4;
  }

  context = self->_context;

  return TUI::Evaluation::ResolvedValue::floatValue(v7, context);
}

- (int64_t)integerForAttribute:(unsigned __int16)a3 withDefault:(int64_t)a4 node:(id)a5
{
  v7 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a5.var0];
  if (!v7)
  {
    return a4;
  }

  context = self->_context;

  return TUI::Evaluation::ResolvedValue::integerValue(v7, context);
}

- (unint64_t)unsignedIntegerForAttribute:(unsigned __int16)a3 withDefault:(unint64_t)a4 node:(id)a5
{
  v7 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a5.var0];
  if (!v7)
  {
    return a4;
  }

  context = self->_context;

  return TUI::Evaluation::ResolvedValue::integerValue(v7, context);
}

- (CGSize)sizeForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    width = TUI::Evaluation::ResolvedValue::sizeValue(v5, self->_context);
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)colorForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::colorValue(v5, self->_context);
  }

  return v5;
}

- (id)colorArrayForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::colorArrayValue(v5, self->_context);
  }

  return v5;
}

- (id)stringArrayForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::stringArrayValue(v5, self->_context);
  }

  return v5;
}

- (id)stringForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::stringValue(v5, self->_context);
  }

  return v5;
}

- (BOOL)BOOLForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    context = self->_context;

    LOBYTE(v5) = TUI::Evaluation::ResolvedValue::BOOLValue(v5, context);
  }

  return v5;
}

- (BOOL)BOOLForAttribute:(unsigned __int16)a3 withDefault:(BOOL)a4 node:(id)a5
{
  v7 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a5.var0];
  if (!v7)
  {
    return a4;
  }

  context = self->_context;

  return TUI::Evaluation::ResolvedValue::BOOLValue(v7, context);
}

- (id)objectForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a3 node:a4.var0];
  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::objectValue(v5, self->_context);
  }

  return v5;
}

- (CGAffineTransform)transformForAttribute:(SEL)a3 node:(unsigned __int16)a4
{
  result = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a4 node:a5.var0];
  if (result)
  {
    context = self->_context;

    TUI::Evaluation::ResolvedValue::transformValue(result, context, retstr);
  }

  else
  {
    v9 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v9;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  return result;
}

- ($2940F3BBF0C500EC413214967FDB6F62)springTimingParametersForAttribute:(SEL)a3 node:(unsigned __int16)a4
{
  result = [(TUIInstantiateContext *)self _resolvedValueForAttribute:a4 node:a5.var0];
  if (result)
  {
    context = self->_context;

    TUI::Evaluation::ResolvedValue::springTimingParameters(result, context, retstr);
  }

  else
  {
    *&retstr->var0 = TUISpringTimingParametersZero;
    *&retstr->var2 = unk_24CEC0;
    retstr->var3.dy = 0.0;
  }

  return result;
}

- (unint64_t)animationCalculationModeAndCurveForNode:(id)a3
{
  var0 = a3.var0;
  v5 = [(TUIInstantiateContext *)self stringForAttribute:64 node:a3.var0];
  if ([v5 isEqualToString:@"ease-in-out"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"ease-in"])
  {
    v6 = 0x10000;
  }

  else if ([v5 isEqualToString:@"ease-out"])
  {
    v6 = 0x20000;
  }

  else if ([v5 isEqualToString:@"linear"])
  {
    v6 = 196608;
  }

  else if ([v5 isEqualToString:@"sigmoid"])
  {
    v6 = 0x40000;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TUIInstantiateContext *)self stringForAttribute:46 node:var0];
  if (([v7 isEqualToString:@"linear"] & 1) == 0)
  {
    if ([v7 isEqualToString:@"discrete"])
    {
      v6 |= 0x400uLL;
    }

    else if ([v7 isEqualToString:@"paced"])
    {
      v6 |= 0x800uLL;
    }

    else if ([v7 isEqualToString:@"cubic"])
    {
      v6 |= 0xC00uLL;
    }

    else if ([v7 isEqualToString:@"cubic-paced"])
    {
      v6 |= 0x1000uLL;
    }
  }

  return v6;
}

- (id)guidesForNode:(id)a3
{
  var0 = a3.var0;
  v5 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:121 node:a3.var0];
  v6 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:209 node:var0];
  v7 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:207 node:var0];
  v8 = [(TUIInstantiateContext *)self _resolvedValueForAttribute:43 node:var0];
  if (v5)
  {
    v5 = TUI::Evaluation::ResolvedValue::guideValue(v5, self->_context);
  }

  if (v6)
  {
    v6 = TUI::Evaluation::ResolvedValue::guideValue(v6, self->_context);
  }

  if (v7)
  {
    v7 = TUI::Evaluation::ResolvedValue::guideValue(v7, self->_context);
  }

  if (v8)
  {
    v9 = TUI::Evaluation::ResolvedValue::guideValue(v8, self->_context);
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  if (!v6 && !v7 && !v9)
  {
    v10 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v10 = [[TUIGuides alloc] initWithLeading:v5 trailing:v6 top:v7 bottom:v9];
LABEL_16:

  return v10;
}

- (id)pointerStyleForNode:(id)a3
{
  v4 = objc_opt_class();
  context = self->_context;
  v10 = 153;
  if ((*(context + 299) & 2) != 0)
  {
    v7 = sub_11F88(context + 44, &v10);
    v6 = TUI::Evaluation::ResolvedValue::objectValue((v7 + 3), context);
  }

  else
  {
    v6 = 0;
  }

  v8 = TUIDynamicCast(v4, v6);

  return v8;
}

- (id)focusStyleForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v4 = a3;
  v6 = objc_opt_class();
  context = self->_context;
  v12 = v4;
  if (v4 == 0xFFFF)
  {
    goto LABEL_5;
  }

  if (v4 >= 0x100)
  {
    sub_8BEBC("bitset test argument out of range");
  }

  if (((*(context + ((v4 >> 3) & 0x1FF8) + 280) >> v4) & 1) == 0)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    v8 = sub_11F88(context + 44, &v12);
    v9 = TUI::Evaluation::ResolvedValue::objectValue((v8 + 3), context);
  }

  v10 = TUIDynamicCast(v6, v9);

  return v10;
}

- ($738B17BD11CC339B30296C0EA03CEC2B)elementReferenceForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::elementReference(v5, context, v6);
}

- ($738B17BD11CC339B30296C0EA03CEC2B)nameReferenceForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::nameReference(v5, context, v6);
}

- ($201E9A47BE70A2B12CCA2F48B75AA2F7)bindingNameForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::bindingName(v5, context, v6);
}

- ($201E9A47BE70A2B12CCA2F48B75AA2F7)constantNameForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::constantName(v5, context, v6);
}

- ($201E9A47BE70A2B12CCA2F48B75AA2F7)globalsNameForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::globalsName(v5, context, v6);
}

- ($738B17BD11CC339B30296C0EA03CEC2B)lookupUnconditionalAttribute:(unsigned __int16)a3 attributes:(id)a4
{
  v20.var0 = 0;
  var1 = a4.var1;
  if (a4.var1)
  {
    v5 = a3;
    v6 = 0;
    v7 = *(self->_context + 72);
    var0 = a4.var0;
    v21 = a4.var1;
    do
    {
      if (v7[31] <= (v6 + var0))
      {
        v9 = 0;
      }

      else
      {
        v9 = v7[30] + 8 * (v6 + var0);
        if (v9)
        {
          v10 = *v9;
          v11 = v7[60];
          if (v10 >= (v7[61] - v11) >> 1)
          {
            v12 = 0xFFFFLL;
          }

          else
          {
            v12 = *(v11 + 2 * v10);
          }

          v13 = *(v9 + 4);
          v9 = *(v9 + 2) << 16;
          goto LABEL_11;
        }
      }

      v13 = 0xFFFFFFFFLL;
      v12 = 0xFFFFLL;
LABEL_11:
      if (v12 == v5 && (v12 | v9) >= 0x10000)
      {
        v14 = v9 >> 16;
        v15 = 12 * v13;
        while (1)
        {
          if (v7[29] <= v13)
          {
            v17 = &TUIConditionNil;
            v16 = &TUIValueNil;
          }

          else
          {
            v16 = (v15 + v7[28]);
            v17 = v16 + 1;
            if (!v16)
            {
              v17 = &TUIConditionNil;
              v16 = &TUIValueNil;
            }
          }

          v18 = *v16;
          if (TUIConditionIsNil(*v17))
          {
            break;
          }

          v15 += 12;
          ++v13;
          if (!--v14)
          {
            goto LABEL_23;
          }
        }

        v20.var0 = v18;
LABEL_23:
        var1 = v21;
      }

      ++v6;
    }

    while (v6 != var1);
  }

  return v20;
}

- ($738B17BD11CC339B30296C0EA03CEC2B)closureForNode:(id)a3
{
  context = self->_context;
  v4 = context[72];
  if (*(v4 + 216) <= a3.var0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 208) + 28 * a3.var0;
  }

  return TUI::Evaluation::Context::closureForElement(context, v5);
}

- ($0220C184157FC9E8AD112820945A9326)letDefinitionWithNameAttribute:(unsigned __int16)a3 valueAttribute:(unsigned __int16)a4 node:(id)a5
{
  v5 = a4;
  var0 = a5.var0;
  v8 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a5.var0];
  v10 = TUI::Instruction::Decoder::definition(v8, self->_context, v9);
  v11 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:v5 node:var0];
  v12 = TUILetDefinitionNil;
  v13 = *algn_2E3DC4;
  v14 = TUIDefinitionNotNil(v10);
  if (v14)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  return (v15 | (v16 << 32));
}

- ($BCFAEF449BEAD7B465B9C350BA76DD22)styleDefinitionWithNode:(SEL)a3 nameAttribute:(id)a4 inheritAttribute:(unsigned __int16)a5
{
  v6 = a6;
  v7 = a5;
  result = [(TUIPackageInternal *)self->_package packageBuffer];
  if (*&result[9].var0.var0 > a4.var0 && (v12 = *&result[8].var2.var0.var1 + 28 * a4.var0) != 0)
  {
    v13 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:v7 node:a4.var0];
    v15 = TUI::Instruction::Decoder::definition(v13, self->_context, v14);
    *&retstr->var0.var0 = TUIStyleDefinitionNil;
    *&retstr->var2.var0.var1 = qword_2E3DD8;
    result = TUIDefinitionNotNil(v15);
    if (result)
    {
      v16 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:v6 node:a4.var0];
      result = TUI::Instruction::Decoder::styleReference(v16, self->_context, v17);
      retstr->var0.var0 = v15;
      retstr->var1 = (*(v12 + 16) | (*(v12 + 2) << 32));
      retstr->var2 = result;
      retstr->var3.var0 = *(v12 + 24);
    }
  }

  else
  {
    *&retstr->var0.var0 = TUIStyleDefinitionNil;
    *&retstr->var2.var0.var1 = qword_2E3DD8;
  }

  return result;
}

- ($0220C184157FC9E8AD112820945A9326)animationDefinitonWithNode:(id)a3 nameAttribute:(unsigned __int16)a4
{
  v4 = a4;
  v7 = [(TUIPackageInternal *)self->_package packageBuffer];
  if (v7[27] > a3.var0 && 28 * a3.var0 + v7[26])
  {
    v10 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:v4 node:?];
    v12 = TUI::Instruction::Decoder::definition(v10, self->_context, v11);
    v13 = TUIAnimationDefinitionNil;
    v14 = dword_2E3DE4;
    v15 = TUIDefinitionNotNil(v12);
    if (v15)
    {
      v8 = v12;
    }

    else
    {
      v8 = v13;
    }

    if (v15)
    {
      var0 = a3.var0;
    }

    else
    {
      var0 = v14;
    }
  }

  else
  {
    v8 = TUIAnimationDefinitionNil;
    var0 = dword_2E3DE4;
  }

  return (v8 | (var0 << 32));
}

- ($0220C184157FC9E8AD112820945A9326)elementDefinitionWithNameAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = a3;
  v7 = [(TUIPackageInternal *)self->_package packageBuffer];
  if (v7[27] > a4.var0 && 28 * a4.var0 + v7[26])
  {
    v10 = TUIElementDefinitionNil;
    v11 = dword_2E3DEC;
    v12 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:v5 node:?];
    v14 = TUI::Instruction::Decoder::definition(v12, self->_context, v13);
    v15 = TUIDefinitionNotNil(v14);
    if (v15)
    {
      v8 = v14;
    }

    else
    {
      v8 = v10;
    }

    if (v15)
    {
      var0 = a4.var0;
    }

    else
    {
      var0 = v11;
    }
  }

  else
  {
    v8 = TUIElementDefinitionNil;
    var0 = dword_2E3DEC;
  }

  return (v8 | (var0 << 32));
}

- ($738B17BD11CC339B30296C0EA03CEC2B)enumeratorWithAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::enumerator(v5, context, v6);
}

- ($E756168898AF8F0D74815393AFAB5A0B)animationReferenceForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v5 = [(TUIInstantiateContext *)self unresolvedValueForAttribute:a3 node:a4.var0];
  context = self->_context;

  return TUI::Instruction::Decoder::animationReference(v5, context, v6);
}

- (id)baseURLForNode:(id)a3
{
  v3 = *(self->_context + 72);
  if (v3[27] > a3.var0 && (v4 = v3[26] + 28 * a3.var0) != 0 && (v5 = *(v4 + 24) & 0xFFF, v3[14] > v5) && (v6 = v3[13]) != 0)
  {
    v7 = [NSString stringWithUTF8String:v6 + *(v3[15] + 4 * v5)];
    v8 = [NSURL URLWithString:v7 relativeToURL:*v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)includeTemplateWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = *(self->_context + 95);
    v6 = [v5 package];

    if (objc_opt_respondsToSelector())
    {
      v7 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:1];
      v8 = [v7 path];
      v9 = [v8 stringByStandardizingPath];
      [v7 setPath:v9];

      v10 = [v7 URL];
      v11 = [v6 prebuiltTemplates];
      v12 = [v11 objectForKeyedSubscript:v10];

      if (v12)
      {
        TUI::Evaluation::Context::includeTemplate(self->_context, v12);
      }

      else
      {
        v13 = TUIInstantiationLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          uniqueIdentifier = self->_feedId.uniqueIdentifier;
          v15 = [v4 absoluteURL];
          v16 = [v6 url];
          v17 = 134218498;
          v18 = uniqueIdentifier;
          v19 = 2114;
          v20 = v15;
          v21 = 2114;
          v22 = v16;
          _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[fid:%lu] failed to find template: %{public}@ in package: %{public}@", &v17, 0x20u);
        }
      }
    }

    else
    {
      v7 = TUIInstantiationLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_19A070(self, v7);
      }
    }
  }

  else
  {
    [(TUIInstantiateContext *)self reportError:1001];
  }
}

- (unint64_t)childCountForNode:(id)a3
{
  v3 = *(self->_context + 72);
  if (*(v3 + 216) > a3.var0 && (v4 = *(v3 + 208) + 28 * a3.var0) != 0)
  {
    return *(v4 + 4);
  }

  else
  {
    return 0;
  }
}

- (id)environmentChildContainersForContainer:(id)a3
{
  v3 = TUI::Evaluation::Context::environmentChildContainersForContainer(self->_context, a3);

  return v3;
}

- (void)enumerateChildrenOfNode:(id)a3 block:(id)a4
{
  v9 = a4;
  v6 = TUI::Evaluation::Context::childrenOfNode(self->_context, a3.var0);
  if ((v6 & 0xFFFF00000000) != 0)
  {
    v7 = 0;
    v8 = WORD2(v6);
    do
    {
      if (TUI::Evaluation::Context::evaluateCconditionForNode(self->_context, v6))
      {
        v9[2](v9, v6);
      }

      ++v7;
      ++v6;
    }

    while (v7 < v8);
  }
}

- (id)evaluateStringForAttribute:(unsigned __int16)a3 node:(id)a4
{
  v7 = 0;
  v8 = 0;
  if (TUI::Evaluation::Context::evaluateAttributeForNode(self->_context, a3, a4.var0, &v7))
  {
    v5 = TUI::Evaluation::ResolvedValue::stringValue(&v7, self->_context);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)debugDumpEnvironmentContainerStructure:(id)a3
{
  v3 = TUI::Evaluation::Context::debugDumpEnvironmentContainerStructure(self->_context, a3);

  return v3;
}

- (id)structForAttribute:(unsigned __int16)a3 node:(id)a4
{
  context = self->_context;
  v9 = a3;
  if (a3 == 0xFFFF)
  {
    goto LABEL_5;
  }

  if (a3 >= 0x100u)
  {
    sub_8BEBC("bitset test argument out of range");
  }

  if (((*(context + ((a3 >> 3) & 0x1FF8) + 280) >> a3) & 1) == 0)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v6 = sub_11F88(context + 44, &v9);
    v7 = TUI::Evaluation::ResolvedValue::structValue(v6 + 3, self->_context);
  }

  return v7;
}

- (TUIInstantiateContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TUIActionHandlerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (TUIDynamicControlling)dynamicController
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicController);

  return WeakRetained;
}

- (TUITransactionCoordinating)transactionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);

  return WeakRetained;
}

@end