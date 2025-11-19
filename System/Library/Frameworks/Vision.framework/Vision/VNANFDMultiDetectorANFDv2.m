@interface VNANFDMultiDetectorANFDv2
- (id)splitDetectedClassResultsIntoSubclasses:(id)a3;
@end

@implementation VNANFDMultiDetectorANFDv2

- (id)splitDetectedClassResultsIntoSubclasses:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"Dog"];
          v13 = v5;
          if (!v12)
          {
            v14 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"Cat"];
            v13 = v6;
            if (!v14)
            {
              v18.receiver = self;
              v18.super_class = VNANFDMultiDetectorANFDv2;
              v15 = [(VNANFDMultiDetector *)&v18 splitDetectedClassResultsIntoSubclasses:v7];

              v4 = v17;
              goto LABEL_14;
            }
          }

          [v13 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = v17;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, v6, 0}];
LABEL_14:
  }

  else
  {
    v23.receiver = self;
    v23.super_class = VNANFDMultiDetectorANFDv2;
    v15 = [(VNANFDMultiDetector *)&v23 splitDetectedClassResultsIntoSubclasses:v4];
  }

  return v15;
}

@end