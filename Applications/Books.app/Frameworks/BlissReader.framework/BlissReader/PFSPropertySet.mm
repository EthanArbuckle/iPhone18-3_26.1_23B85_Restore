@interface PFSPropertySet
- (void)removeUninheritedProperties;
@end

@implementation PFSPropertySet

- (void)removeUninheritedProperties
{
  p_mProperties = &self->mProperties;
  p_end_node = &self->mProperties.__tree_.__end_node_;
  begin_node = self->mProperties.__tree_.__begin_node_;
  if (begin_node != &self->mProperties.__tree_.__end_node_)
  {
    do
    {
      if (![PFXHtmlStylePropertyInfo propertyIsInherited:begin_node[1].super.isa])
      {

        sub_40D0C(p_mProperties, begin_node);
        operator delete(begin_node);
        begin_node = *p_mProperties;
      }

      isa = begin_node->mProperties.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->mProperties.__tree_.__end_node_.__left_;
          v7 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v7);
      }

      begin_node = left;
    }

    while (left != p_end_node);
  }
}

@end