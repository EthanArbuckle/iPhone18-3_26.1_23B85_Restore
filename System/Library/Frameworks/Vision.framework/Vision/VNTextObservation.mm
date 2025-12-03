@interface VNTextObservation
- (BOOL)isEqual:(id)equal;
- (VNTextObservation)initWithCoder:(id)coder;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCharacterBoxes:(id)boxes;
- (void)setText:(id)text;
@end

@implementation VNTextObservation

- (void)setText:(id)text
{
  textCopy = text;
  v4 = [textCopy copy];
  text = self->_text;
  self->_text = v4;
}

- (void)setCharacterBoxes:(id)boxes
{
  boxesCopy = boxes;
  v4 = [boxesCopy copy];
  characterBoxes = self->_characterBoxes;
  self->_characterBoxes = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNTextObservation;
    if ([(VNRectangleObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      characterBoxes = [(VNTextObservation *)self characterBoxes];
      characterBoxes2 = [(VNTextObservation *)v5 characterBoxes];
      v8 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNTextObservation;
  v3 = [(VNRectangleObservation *)&v7 hash];
  characterBoxes = [(VNTextObservation *)self characterBoxes];
  v5 = [characterBoxes hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNTextObservation;
  vn_cloneObject = [(VNRectangleObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSArray *)self->_characterBoxes copy];
    v5 = vn_cloneObject[28];
    vn_cloneObject[28] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNTextObservation;
  [(VNRectangleObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_characterBoxes forKey:@"characterBoxes"];
}

- (VNTextObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VNTextObservation;
  v5 = [(VNRectangleObservation *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    v7 = [v6 copy];
    text = v5->_text;
    v5->_text = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"characterBoxes"];
    v13 = [v12 copy];
    characterBoxes = v5->_characterBoxes;
    v5->_characterBoxes = v13;

    v15 = v5;
  }

  return v5;
}

@end