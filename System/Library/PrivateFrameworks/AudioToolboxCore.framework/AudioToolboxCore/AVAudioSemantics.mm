@interface AVAudioSemantics
- (AVAudioSemantics)initWithAudioSemantics:(__CFArray *)semantics;
- (AVAudioSemantics)initWithChannelGroups:(id)groups;
- (AVAudioSemantics)initWithCoder:(id)coder;
@end

@implementation AVAudioSemantics

- (AVAudioSemantics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AVAudioSemantics;
  v5 = [(AVAudioSemantics *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"channelGroups"];
    channelGroups = v5->_channelGroups;
    v5->_channelGroups = v6;
  }

  return v5;
}

- (AVAudioSemantics)initWithAudioSemantics:(__CFArray *)semantics
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AVAudioSemantics;
  v4 = [(AVAudioSemantics *)&v21 init];
  if (v4)
  {
    semanticsCopy = semantics;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[__CFArray count](semanticsCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = semanticsCopy;
    v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = [AVAudioChannelGroupSemantics alloc];
          v13 = [(AVAudioChannelGroupSemantics *)v12 initWithAudioChannelGroupSemantics:v11, v17];
          [(NSArray *)v6 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    channelGroups = v4->_channelGroups;
    v4->_channelGroups = v6;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

- (AVAudioSemantics)initWithChannelGroups:(id)groups
{
  groupsCopy = groups;
  v9.receiver = self;
  v9.super_class = AVAudioSemantics;
  v6 = [(AVAudioSemantics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channelGroups, groups);
  }

  return v7;
}

@end