@interface SCNScene
- (id)p_groupNodes:(id)a3;
@end

@implementation SCNScene

- (id)p_groupNodes:(id)a3
{
  v4 = +[NSSet setWithArray:](NSSet, "setWithArray:", [a3 valueForKey:@"parentNode"]);
  if ([(NSSet *)v4 count]== &dword_0 + 1)
  {
    v5 = [(NSSet *)v4 anyObject];
    v6 = +[SCNNode node];
    [v5 addChildNode:v6];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [v11 removeFromParentNode];
          [(SCNNode *)v6 addChildNode:v11];
        }

        v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v6;
}

@end