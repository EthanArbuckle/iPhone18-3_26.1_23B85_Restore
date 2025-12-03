@interface NTKAkitaFace
- (id)_faceDescription;
@end

@implementation NTKAkitaFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKAkitaFace *)self _faceDescriptionKey];
  v3 = [NTKAkitaFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"FACE_STYLE_AKITA_DESCRIPTION"];

  return v3;
}

@end