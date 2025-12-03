@interface TUILayoutRenderModelCollector
- (TUILayoutRenderModelCollector)init;
- (id).cxx_construct;
- (id)finalizeImpressions;
- (id)finalizeLinkEntities;
- (id)hostingCollectorFinalizeMap;
- (void)collectWithRoot:(id)root options:(unint64_t)options entryUUID:(id)d;
- (void)hostingCollectorAddProperties:(id)properties forIdentifier:(id)identifier;
@end

@implementation TUILayoutRenderModelCollector

- (TUILayoutRenderModelCollector)init
{
  v5.receiver = self;
  v5.super_class = TUILayoutRenderModelCollector;
  v2 = [(TUILayoutRenderModelCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_7A100(&v2->_stack.__begin_, 0x20uLL);
  }

  return v3;
}

- (void)collectWithRoot:(id)root options:(unint64_t)options entryUUID:(id)d
{
  optionsCopy = options;
  rootCopy = root;
  dCopy = d;
  objc_storeStrong(&self->_root, root);
  sub_7A93C(&self->_stack, self->_stack.__begin_, self->_stack.__end_);
  if (self->_root)
  {
    root = self->_root;
    rootCopy = [NSArray arrayWithObjects:&root count:1, rootCopy];
    [rootCopy objectEnumerator];
    *(&v81 + 1) = *&v81 = 0;
    v82[0] = self->_options;
    v10 = *&CGAffineTransformIdentity.c;
    *&v82[8] = *&CGAffineTransformIdentity.a;
    *&v82[24] = v10;
    v83 = *&CGAffineTransformIdentity.tx;
    v11 = *(&v81 + 1);
    sub_7A994(&self->_stack, &v81);

    *(self->_stack.__end_ - 56) = *(self->_stack.__end_ - 56) & 0xFE | optionsCopy & 1;
    *(self->_stack.__end_ - 56) = *(self->_stack.__end_ - 56) & 0xFD | optionsCopy & 2;
    *(self->_stack.__end_ - 56) = *(self->_stack.__end_ - 56) & 0xFB | optionsCopy & 4;
    for (i = self->_stack.__end_; self->_stack.__begin_ != i; i = self->_stack.__end_)
    {
      nextObject = [*(i - 8) nextObject];
      v14 = nextObject;
      end = self->_stack.__end_;
      if (nextObject)
      {
        LOBYTE(v16) = *(end - 56);
        if (([nextObject hidden] & 1) == 0)
        {
          if (v16)
          {
            v16 = v16 & 0xFE | [v14 collectHostingPropertiesWithCollector:self];
          }

          v17 = *&CGAffineTransformIdentity.a;
          v18 = *&CGAffineTransformIdentity.c;
          v19 = *&CGAffineTransformIdentity.tx;
          *&v80.a = *&CGAffineTransformIdentity.a;
          *&v80.c = v18;
          *&v80.tx = *&CGAffineTransformIdentity.tx;
          if ((v16 & 6) != 0)
          {
            v20 = self->_stack.__end_;
            v81 = *(v20 - 3);
            *v82 = *(v20 - 2);
            *&v82[16] = *(v20 - 1);
            [*(v20 - 9) computedNaturalSize];
            v22 = v21;
            v24 = v23;
            [v14 computedOrigin];
            v26 = v25;
            v28 = v27;
            [v14 computedTransformedSize];
            CGAffineTransformMakeTranslation(&t1, v26 + v29 * 0.5 - v22 * 0.5, v28 + v30 * 0.5 - v24 * 0.5);
            *&t2.a = v81;
            *&t2.c = *v82;
            *&t2.tx = *&v82[16];
            CGAffineTransformConcat(&v79, &t1, &t2);
            v71 = *&v79.a;
            v74 = *&v79.c;
            tx = v79.tx;
            ty = v79.ty;
            [v14 computedTransform];
            *&t2.a = v71;
            *&t2.c = v74;
            t2.tx = tx;
            t2.ty = ty;
            CGAffineTransformConcat(&v79, &t1, &t2);
            v72 = *&v79.a;
            v75 = *&v79.c;
            v33 = v79.tx;
            v34 = v79.ty;
            [v14 renderTransform];
            *&t2.a = v72;
            *&t2.c = v75;
            t2.tx = v33;
            t2.ty = v34;
            CGAffineTransformConcat(&v79, &t1, &t2);
            _V3.D[1] = v79.b;
            _D0 = CGPointZero.x;
            __asm { FMLA            D1, D0, V3.D[1] }

            v73 = *&v79.c;
            v76 = *&v79.a;
            v70 = *&v79.tx;
            CGAffineTransformMakeTranslation(&t1, -(v79.tx + CGPointZero.y * v79.c + v79.a * CGPointZero.x), -(v79.ty + _D1));
            CGAffineTransformConcat(&v80, &v79, &t1);
            if ((v16 & 2) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v70 = v19;
            v73 = v18;
            v76 = v17;
            if ((v16 & 2) == 0)
            {
LABEL_24:
              if ((v16 & 4) != 0)
              {
                v51 = *(self->_stack.__end_ - 9);
                collectLinkEntities = v51;
                if (v51 && ([v51 collectLinkEntitiesForChild:v14] & 1) == 0)
                {
                  LOBYTE(v16) = v16 & 0xFB;
                }

                else
                {

                  collectLinkEntities = [v14 collectLinkEntities];
                  if (collectLinkEntities)
                  {
                    v53 = [v14 box];
                    identifier = [v53 identifier];
                    v55 = [identifier tui_identifierByPrependingUUID:dCopy];

                    v56 = [TUILinkEntityAttributes alloc];
                    [v14 computedNaturalSize];
                    v81 = *&v80.a;
                    *v82 = *&v80.c;
                    *&v82[16] = *&v80.tx;
                    v57 = [TUILinkEntityAttributes initWithIdentifier:v56 linkEntities:"initWithIdentifier:linkEntities:size:center:transform:" size:v55 center:collectLinkEntities transform:&v81];
                    linkEntities = self->_linkEntities;
                    if (!linkEntities)
                    {
                      v59 = objc_opt_new();
                      v60 = self->_linkEntities;
                      self->_linkEntities = v59;

                      linkEntities = self->_linkEntities;
                    }

                    [(NSMutableArray *)linkEntities addObject:v57];
                  }

                  if ([v14 collectLinkEntitiesForChildren])
                  {
                    v61 = 4;
                  }

                  else
                  {
                    v61 = 0;
                  }

                  LOBYTE(v16) = v61 | v16 & 0xFB;
                }
              }

              children = [v14 children];
              v63 = children;
              if (v16 & 6) != 0 || (v16)
              {
                if ([children count])
                {
                  objectEnumerator = [v63 objectEnumerator];
                  v65 = v14;
                  v66 = objectEnumerator;
                  *&v81 = v65;
                  *(&v81 + 1) = v66;
                  v82[0] = v16;
                  *&v82[8] = v76;
                  *&v82[24] = v73;
                  v83 = v70;
                  sub_7A994(&self->_stack, &v81);
                }
              }

              goto LABEL_42;
            }
          }

          v42 = *(self->_stack.__end_ - 9);
          impressionData = v42;
          if (v42 && ([v42 collectImpressionsForChild:v14] & 1) == 0)
          {
            LOBYTE(v16) = v16 & 0xFD;
          }

          else
          {

            v44 = [v14 box];
            impressionData = [v44 impressionData];

            if (impressionData)
            {
              v45 = [TUIImpressionAttributes alloc];
              [v14 computedNaturalSize];
              v81 = *&v80.a;
              *v82 = *&v80.c;
              *&v82[16] = *&v80.tx;
              v46 = [TUIImpressionAttributes initWithData:v45 size:"initWithData:size:center:transform:" center:impressionData transform:&v81];
              impressions = self->_impressions;
              if (!impressions)
              {
                v48 = objc_opt_new();
                v49 = self->_impressions;
                self->_impressions = v48;

                impressions = self->_impressions;
              }

              [(NSMutableArray *)impressions addObject:v46];
            }

            if ([v14 collectImpressionsForChildren])
            {
              v50 = 2;
            }

            else
            {
              v50 = 0;
            }

            LOBYTE(v16) = v50 | v16 & 0xFD;
          }

          goto LABEL_24;
        }
      }

      else
      {
        sub_7AE80(&self->_stack, end - 72);
      }

LABEL_42:
    }
  }

  v67 = self->_root;
  self->_root = 0;
}

- (void)hostingCollectorAddProperties:(id)properties forIdentifier:(id)identifier
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  if (!self->_hostingIdentifiersOrder)
  {
    v7 = objc_opt_new();
    hostingIdentifiersOrder = self->_hostingIdentifiersOrder;
    self->_hostingIdentifiersOrder = v7;
  }

  if (!self->_hostingPropertiesMap)
  {
    v9 = objc_opt_new();
    hostingPropertiesMap = self->_hostingPropertiesMap;
    self->_hostingPropertiesMap = v9;
  }

  [(NSMutableArray *)self->_hostingIdentifiersOrder addObject:identifierCopy];
  [(NSMutableDictionary *)self->_hostingPropertiesMap setObject:propertiesCopy forKeyedSubscript:identifierCopy];
}

- (id)hostingCollectorFinalizeMap
{
  if (self->_hostingPropertiesMap)
  {
    v3 = [[TUIHostingMap alloc] initWithMap:self->_hostingPropertiesMap order:self->_hostingIdentifiersOrder];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)finalizeImpressions
{
  v2 = [(NSMutableArray *)self->_impressions copy];

  return v2;
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

- (id).cxx_construct
{
  *(self + 8) &= 0xF8u;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

@end