@interface _TUISmartGridContentBuilder
- (void)configureCell:(id)a3;
- (void)configureWithChildNode:(id)a3 attributes:(id)a4;
@end

@implementation _TUISmartGridContentBuilder

- (void)configureWithChildNode:(id)a3 attributes:(id)a4
{
  var0 = a3.var0;
  v6 = a4;
  self->_rowSpan = [v6 unsignedIntegerForAttribute:181 withDefault:1 node:var0];
  v7 = [v6 unsignedIntegerForAttribute:55 withDefault:1 node:var0];

  self->_columnSpan = v7;
}

- (void)configureCell:(id)a3
{
  columnSpan = self->_columnSpan;
  v5 = a3;
  [v5 setColumnSpan:columnSpan];
  [v5 setRowSpan:self->_rowSpan];
}

@end