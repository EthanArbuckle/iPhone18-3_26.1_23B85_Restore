@interface _TUISmartGridContentBuilder
- (void)configureCell:(id)cell;
- (void)configureWithChildNode:(id)node attributes:(id)attributes;
@end

@implementation _TUISmartGridContentBuilder

- (void)configureWithChildNode:(id)node attributes:(id)attributes
{
  var0 = node.var0;
  attributesCopy = attributes;
  self->_rowSpan = [attributesCopy unsignedIntegerForAttribute:181 withDefault:1 node:var0];
  v7 = [attributesCopy unsignedIntegerForAttribute:55 withDefault:1 node:var0];

  self->_columnSpan = v7;
}

- (void)configureCell:(id)cell
{
  columnSpan = self->_columnSpan;
  cellCopy = cell;
  [cellCopy setColumnSpan:columnSpan];
  [cellCopy setRowSpan:self->_rowSpan];
}

@end