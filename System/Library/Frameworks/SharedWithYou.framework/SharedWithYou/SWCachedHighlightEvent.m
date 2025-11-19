@interface SWCachedHighlightEvent
+ (id)cachedEvent:(id)a3 forHighlight:(id)a4;
- (SWCachedHighlightEvent)initWithEvent:(id)a3 forHighlight:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SWCachedHighlightEvent

+ (id)cachedEvent:(id)a3 forHighlight:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithEvent:v7 forHighlight:v6];

  return v8;
}

- (SWCachedHighlightEvent)initWithEvent:(id)a3 forHighlight:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SWCachedHighlightEvent;
  v9 = [(SWCachedHighlightEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, a3);
    objc_storeStrong(&v10->_highlight, a4);
    v11 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v10->_uuid;
    v10->_uuid = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SWCachedHighlightEvent *)self event];
  v6 = [(SWCachedHighlightEvent *)self highlight];
  v7 = [v4 initWithEvent:v5 forHighlight:v6];

  return v7;
}

@end