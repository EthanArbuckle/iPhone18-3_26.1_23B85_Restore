@interface MTRDataTypeICECandidateStruct
- (MTRDataTypeICECandidateStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDataTypeICECandidateStruct

- (MTRDataTypeICECandidateStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRDataTypeICECandidateStruct;
  v2 = [(MTRDataTypeICECandidateStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    candidate = v2->_candidate;
    v2->_candidate = &stru_284BD0DD8;

    sdpMid = v3->_sdpMid;
    v3->_sdpMid = 0;

    sdpmLineIndex = v3->_sdpmLineIndex;
    v3->_sdpmLineIndex = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDataTypeICECandidateStruct);
  v5 = [(MTRDataTypeICECandidateStruct *)self candidate];
  [(MTRDataTypeICECandidateStruct *)v4 setCandidate:v5];

  v6 = [(MTRDataTypeICECandidateStruct *)self sdpMid];
  [(MTRDataTypeICECandidateStruct *)v4 setSdpMid:v6];

  v7 = [(MTRDataTypeICECandidateStruct *)self sdpmLineIndex];
  [(MTRDataTypeICECandidateStruct *)v4 setSdpmLineIndex:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: candidate:%@ sdpMid:%@; sdpmLineIndex:%@; >", v5, self->_candidate, self->_sdpMid, self->_sdpmLineIndex];;

  return v6;
}

@end