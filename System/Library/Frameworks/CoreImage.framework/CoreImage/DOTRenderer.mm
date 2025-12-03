@interface DOTRenderer
- (BOOL)setCanvasWidth:(unsigned int)width height:(unsigned int)height;
- (CGSize)separation;
- (DOTRenderer)init;
- (void)dealloc;
- (void)drawNode:(id)node;
- (void)flushRender;
@end

@implementation DOTRenderer

- (DOTRenderer)init
{
  v3.receiver = self;
  v3.super_class = DOTRenderer;
  result = [(DOTRenderer *)&v3 init];
  if (result)
  {
    result->direction = 1;
    result->drawEdgesFirst = 0;
    result->contents = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DOTRenderer;
  [(DOTRenderer *)&v2 dealloc];
}

- (BOOL)setCanvasWidth:(unsigned int)width height:(unsigned int)height
{
  file = self->file;
  if (file)
  {
    fclose(file);
  }

  if (![(NSURL *)self->fileURL path:*&width]|| (v6 = fopen([(NSString *)[(NSURL *)self->fileURL path] UTF8String], "w"), (self->file = v6) != 0))
  {
    self->contents = [MEMORY[0x1E696AD60] string];
    -[NSMutableString appendFormat:](self->contents, "appendFormat:", @"digraph %@ {\n", -[NSArray componentsJoinedByString:](-[NSString componentsSeparatedByCharactersInSet:](self->fileTitle, "componentsSeparatedByCharactersInSet:", [MEMORY[0x1E696AB08] whitespaceCharacterSet]), "componentsJoinedByString:", @"_"));
    [(NSMutableString *)self->contents appendString:@"rankdir=BT;\n"];
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)drawNode:(id)node
{
  [(NSMutableString *)self->contents appendFormat:@"n%p [", node];
  color = [node color];
  if (color >= 0x10)
  {
    [DOTRenderer drawNode:];
  }

  v6 = off_1E75C2BE0[color];
  shape = [node shape];
  if (shape >= 4)
  {
    [DOTRenderer drawNode:];
  }

  [(NSMutableString *)self->contents appendFormat:@"style=filled, shape=%s, color=black, fillcolor=%s", off_1E75C2C60[shape], v6];
  [(NSMutableString *)self->contents appendString:@"label=<<table border=0 cellborder=0 cellspacing=0>"];
  if ([node title])
  {
    -[NSMutableString appendFormat:](self->contents, "appendFormat:", @"<tr><td valign='middle'><font face='Menlo'>[%@]</font></td></tr>", [node title]);
  }

  -[NSMutableString appendFormat:](self->contents, "appendFormat:", @"<tr><td valign='middle' balign='left'><font face='Menlo'>%@</font></td></tr>", [objc_msgSend(node "label")]);
  [(NSMutableString *)self->contents appendString:@"</table>>"];
  contents = self->contents;

  [(NSMutableString *)contents appendString:@"];\n"];
}

- (void)flushRender
{
  [(NSMutableString *)self->contents appendString:@"}\n"];
  file = self->file;
  if (file)
  {
    fputs([(NSMutableString *)self->contents UTF8String], file);
    fclose(self->file);
  }

  self->file = 0;
}

- (CGSize)separation
{
  objc_copyStruct(v4, &self->separation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end